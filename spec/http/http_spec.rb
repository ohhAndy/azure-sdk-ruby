# frozen_string_literal: true

require 'spec_helper'

RSpec.describe AzureRest::Http::Paginator do
  let(:api_client) { AzureRest::ApiClient.new }

  it 'iterates through single page results' do
    paginator = AzureRest::Http::Paginator.new(api_client: api_client) do
      { value: [{ id: 1 }, { id: 2 }], next_link: nil }
    end

    items = paginator.to_a
    expect(items.size).to eq(2)
    expect(items).to eq([{ id: 1 }, { id: 2 }])
  end

  it 'follows next_link automatically across multiple pages' do
    page1 = { value: [{ id: 1 }, { id: 2 }], next_link: 'https://management.azure.com/nextPage1' }
    page2 = { value: [{ id: 3 }, { id: 4 }], next_link: nil }

    expect(api_client).to receive(:call_api).with(:GET, '/nextPage1', anything).and_return([page2, 200, {}])

    paginator = AzureRest::Http::Paginator.new(api_client: api_client) do
      page1
    end

    all_items = []
    paginator.each { |item| all_items << item[:id] }
    expect(all_items).to eq([1, 2, 3, 4])
  end
end

RSpec.describe AzureRest::Http::LroPoller do
  let(:api_client) { AzureRest::ApiClient.new }

  it 'returns data immediately for non-async responses' do
    initial_resp = [{ 'id' => 'res-1' }, 200, {}]
    poller = AzureRest::Http::LroPoller.new(api_client, initial_resp)
    expect(poller.async?).to be false
    expect(poller.wait).to eq({ 'id' => 'res-1' })
  end

  it 'polls until status is Succeeded' do
    initial_resp = [
      nil,
      202,
      { 'azure-asyncoperation' => 'https://management.azure.com/async/op1' }
    ]
    poller = AzureRest::Http::LroPoller.new(api_client, initial_resp)
    expect(poller.async?).to be true

    poll_resp_in_progress = [{ status: 'InProgress' }, 200, {}]
    poll_resp_succeeded   = [{ status: 'Succeeded', properties: { state: 'Ready' } }, 200, {}]

    expect(api_client).to receive(:call_api).with(:GET, '/async/op1', anything).and_return(
      poll_resp_in_progress,
      poll_resp_succeeded
    )

    allow(poller).to receive(:sleep).and_return(0)

    result = poller.wait(interval: 0)
    expect(result[:status]).to eq('Succeeded')
    expect(result[:properties][:state]).to eq('Ready')
  end
end
