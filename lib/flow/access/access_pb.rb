# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: flow/access/access.proto

require 'google/protobuf'

require 'flow/entities/account_pb'
require 'flow/entities/block_header_pb'
require 'flow/entities/block_pb'
require 'flow/entities/collection_pb'
require 'flow/entities/event_pb'
require 'flow/entities/transaction_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("flow/access/access.proto", :syntax => :proto3) do
    add_message "flow.access.PingRequest" do
    end
    add_message "flow.access.PingResponse" do
    end
    add_message "flow.access.GetLatestBlockHeaderRequest" do
      optional :is_sealed, :bool, 1
    end
    add_message "flow.access.GetBlockHeaderByIDRequest" do
      optional :id, :bytes, 1
    end
    add_message "flow.access.GetBlockHeaderByHeightRequest" do
      optional :height, :uint64, 1
    end
    add_message "flow.access.BlockHeaderResponse" do
      optional :block, :message, 1, "flow.entities.BlockHeader"
    end
    add_message "flow.access.GetLatestBlockRequest" do
      optional :is_sealed, :bool, 1
    end
    add_message "flow.access.GetBlockByIDRequest" do
      optional :id, :bytes, 1
    end
    add_message "flow.access.GetBlockByHeightRequest" do
      optional :height, :uint64, 1
    end
    add_message "flow.access.BlockResponse" do
      optional :block, :message, 1, "flow.entities.Block"
    end
    add_message "flow.access.GetCollectionByIDRequest" do
      optional :id, :bytes, 1
    end
    add_message "flow.access.CollectionResponse" do
      optional :collection, :message, 1, "flow.entities.Collection"
    end
    add_message "flow.access.SendTransactionRequest" do
      optional :transaction, :message, 1, "flow.entities.Transaction"
    end
    add_message "flow.access.SendTransactionResponse" do
      optional :id, :bytes, 1
    end
    add_message "flow.access.GetTransactionRequest" do
      optional :id, :bytes, 1
    end
    add_message "flow.access.TransactionResponse" do
      optional :transaction, :message, 1, "flow.entities.Transaction"
    end
    add_message "flow.access.TransactionResultResponse" do
      optional :status, :enum, 1, "flow.entities.TransactionStatus"
      optional :status_code, :uint32, 2
      optional :error_message, :string, 3
      repeated :events, :message, 4, "flow.entities.Event"
      optional :block_id, :bytes, 5
    end
    add_message "flow.access.GetAccountRequest" do
      optional :address, :bytes, 1
    end
    add_message "flow.access.GetAccountResponse" do
      optional :account, :message, 1, "flow.entities.Account"
    end
    add_message "flow.access.GetAccountAtLatestBlockRequest" do
      optional :address, :bytes, 1
    end
    add_message "flow.access.AccountResponse" do
      optional :account, :message, 1, "flow.entities.Account"
    end
    add_message "flow.access.GetAccountAtBlockHeightRequest" do
      optional :address, :bytes, 1
      optional :block_height, :uint64, 2
    end
    add_message "flow.access.ExecuteScriptAtLatestBlockRequest" do
      optional :script, :bytes, 1
      repeated :arguments, :bytes, 2
    end
    add_message "flow.access.ExecuteScriptAtBlockIDRequest" do
      optional :block_id, :bytes, 1
      optional :script, :bytes, 2
      repeated :arguments, :bytes, 3
    end
    add_message "flow.access.ExecuteScriptAtBlockHeightRequest" do
      optional :block_height, :uint64, 1
      optional :script, :bytes, 2
      repeated :arguments, :bytes, 3
    end
    add_message "flow.access.ExecuteScriptResponse" do
      optional :value, :bytes, 1
    end
    add_message "flow.access.GetEventsForHeightRangeRequest" do
      optional :type, :string, 1
      optional :start_height, :uint64, 2
      optional :end_height, :uint64, 3
    end
    add_message "flow.access.GetEventsForBlockIDsRequest" do
      optional :type, :string, 1
      repeated :block_ids, :bytes, 2
    end
    add_message "flow.access.EventsResponse" do
      repeated :results, :message, 1, "flow.access.EventsResponse.Result"
    end
    add_message "flow.access.EventsResponse.Result" do
      optional :block_id, :bytes, 1
      optional :block_height, :uint64, 2
      repeated :events, :message, 3, "flow.entities.Event"
      optional :block_timestamp, :message, 4, "google.protobuf.Timestamp"
    end
    add_message "flow.access.GetNetworkParametersRequest" do
    end
    add_message "flow.access.GetNetworkParametersResponse" do
      optional :chain_id, :string, 1
    end
    add_message "flow.access.GetLatestProtocolStateSnapshotRequest" do
    end
    add_message "flow.access.ProtocolStateSnapshotResponse" do
      optional :serializedSnapshot, :bytes, 1
    end
  end
end


module Access
  PingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.PingRequest").msgclass
  PingResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.PingResponse").msgclass
  GetLatestBlockHeaderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetLatestBlockHeaderRequest").msgclass
  GetBlockHeaderByIDRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetBlockHeaderByIDRequest").msgclass
  GetBlockHeaderByHeightRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetBlockHeaderByHeightRequest").msgclass
  BlockHeaderResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.BlockHeaderResponse").msgclass
  GetLatestBlockRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetLatestBlockRequest").msgclass
  GetBlockByIDRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetBlockByIDRequest").msgclass
  GetBlockByHeightRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetBlockByHeightRequest").msgclass
  BlockResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.BlockResponse").msgclass
  GetCollectionByIDRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetCollectionByIDRequest").msgclass
  CollectionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.CollectionResponse").msgclass
  SendTransactionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.SendTransactionRequest").msgclass
  SendTransactionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.SendTransactionResponse").msgclass
  GetTransactionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetTransactionRequest").msgclass
  TransactionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.TransactionResponse").msgclass
  TransactionResultResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.TransactionResultResponse").msgclass
  GetAccountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetAccountRequest").msgclass
  GetAccountResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetAccountResponse").msgclass
  GetAccountAtLatestBlockRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetAccountAtLatestBlockRequest").msgclass
  AccountResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.AccountResponse").msgclass
  GetAccountAtBlockHeightRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetAccountAtBlockHeightRequest").msgclass
  ExecuteScriptAtLatestBlockRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.ExecuteScriptAtLatestBlockRequest").msgclass
  ExecuteScriptAtBlockIDRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.ExecuteScriptAtBlockIDRequest").msgclass
  ExecuteScriptAtBlockHeightRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.ExecuteScriptAtBlockHeightRequest").msgclass
  ExecuteScriptResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.ExecuteScriptResponse").msgclass
  GetEventsForHeightRangeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetEventsForHeightRangeRequest").msgclass
  GetEventsForBlockIDsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetEventsForBlockIDsRequest").msgclass
  EventsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.EventsResponse").msgclass
  EventsResponse::Result = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.EventsResponse.Result").msgclass
  GetNetworkParametersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetNetworkParametersRequest").msgclass
  GetNetworkParametersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetNetworkParametersResponse").msgclass
  GetLatestProtocolStateSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.GetLatestProtocolStateSnapshotRequest").msgclass
  ProtocolStateSnapshotResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("flow.access.ProtocolStateSnapshotResponse").msgclass
end
