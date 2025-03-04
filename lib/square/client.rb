module Square
  #  square client class.
  class Client
    attr_reader :config

    def sdk_version
      '21.1.0.20220720'
    end

    def square_version
      config.square_version
    end

    def user_agent_detail
      config.user_agent_detail
    end

    # Access to mobile_authorization controller.
    # @return [MobileAuthorizationApi] Returns the controller instance.
    def mobile_authorization
      @mobile_authorization ||= MobileAuthorizationApi.new config
    end

    # Access to o_auth controller.
    # @return [OAuthApi] Returns the controller instance.
    def o_auth
      @o_auth ||= OAuthApi.new config
    end

    # Access to v1_transactions controller.
    # @return [V1TransactionsApi] Returns the controller instance.
    def v1_transactions
      @v1_transactions ||= V1TransactionsApi.new config
    end

    # Access to apple_pay controller.
    # @return [ApplePayApi] Returns the controller instance.
    def apple_pay
      @apple_pay ||= ApplePayApi.new config
    end

    # Access to bank_accounts controller.
    # @return [BankAccountsApi] Returns the controller instance.
    def bank_accounts
      @bank_accounts ||= BankAccountsApi.new config
    end

    # Access to bookings controller.
    # @return [BookingsApi] Returns the controller instance.
    def bookings
      @bookings ||= BookingsApi.new config
    end

    # Access to cards controller.
    # @return [CardsApi] Returns the controller instance.
    def cards
      @cards ||= CardsApi.new config
    end

    # Access to cash_drawers controller.
    # @return [CashDrawersApi] Returns the controller instance.
    def cash_drawers
      @cash_drawers ||= CashDrawersApi.new config
    end

    # Access to catalog controller.
    # @return [CatalogApi] Returns the controller instance.
    def catalog
      @catalog ||= CatalogApi.new config
    end

    # Access to customers controller.
    # @return [CustomersApi] Returns the controller instance.
    def customers
      @customers ||= CustomersApi.new config
    end

    # Access to customer_custom_attributes controller.
    # @return [CustomerCustomAttributesApi] Returns the controller instance.
    def customer_custom_attributes
      @customer_custom_attributes ||= CustomerCustomAttributesApi.new config
    end

    # Access to customer_groups controller.
    # @return [CustomerGroupsApi] Returns the controller instance.
    def customer_groups
      @customer_groups ||= CustomerGroupsApi.new config
    end

    # Access to customer_segments controller.
    # @return [CustomerSegmentsApi] Returns the controller instance.
    def customer_segments
      @customer_segments ||= CustomerSegmentsApi.new config
    end

    # Access to devices controller.
    # @return [DevicesApi] Returns the controller instance.
    def devices
      @devices ||= DevicesApi.new config
    end

    # Access to disputes controller.
    # @return [DisputesApi] Returns the controller instance.
    def disputes
      @disputes ||= DisputesApi.new config
    end

    # Access to employees controller.
    # @return [EmployeesApi] Returns the controller instance.
    def employees
      @employees ||= EmployeesApi.new config
    end

    # Access to gift_cards controller.
    # @return [GiftCardsApi] Returns the controller instance.
    def gift_cards
      @gift_cards ||= GiftCardsApi.new config
    end

    # Access to gift_card_activities controller.
    # @return [GiftCardActivitiesApi] Returns the controller instance.
    def gift_card_activities
      @gift_card_activities ||= GiftCardActivitiesApi.new config
    end

    # Access to inventory controller.
    # @return [InventoryApi] Returns the controller instance.
    def inventory
      @inventory ||= InventoryApi.new config
    end

    # Access to invoices controller.
    # @return [InvoicesApi] Returns the controller instance.
    def invoices
      @invoices ||= InvoicesApi.new config
    end

    # Access to labor controller.
    # @return [LaborApi] Returns the controller instance.
    def labor
      @labor ||= LaborApi.new config
    end

    # Access to locations controller.
    # @return [LocationsApi] Returns the controller instance.
    def locations
      @locations ||= LocationsApi.new config
    end

    # Access to checkout controller.
    # @return [CheckoutApi] Returns the controller instance.
    def checkout
      @checkout ||= CheckoutApi.new config
    end

    # Access to transactions controller.
    # @return [TransactionsApi] Returns the controller instance.
    def transactions
      @transactions ||= TransactionsApi.new config
    end

    # Access to loyalty controller.
    # @return [LoyaltyApi] Returns the controller instance.
    def loyalty
      @loyalty ||= LoyaltyApi.new config
    end

    # Access to merchants controller.
    # @return [MerchantsApi] Returns the controller instance.
    def merchants
      @merchants ||= MerchantsApi.new config
    end

    # Access to orders controller.
    # @return [OrdersApi] Returns the controller instance.
    def orders
      @orders ||= OrdersApi.new config
    end

    # Access to payments controller.
    # @return [PaymentsApi] Returns the controller instance.
    def payments
      @payments ||= PaymentsApi.new config
    end

    # Access to payouts controller.
    # @return [PayoutsApi] Returns the controller instance.
    def payouts
      @payouts ||= PayoutsApi.new config
    end

    # Access to refunds controller.
    # @return [RefundsApi] Returns the controller instance.
    def refunds
      @refunds ||= RefundsApi.new config
    end

    # Access to sites controller.
    # @return [SitesApi] Returns the controller instance.
    def sites
      @sites ||= SitesApi.new config
    end

    # Access to snippets controller.
    # @return [SnippetsApi] Returns the controller instance.
    def snippets
      @snippets ||= SnippetsApi.new config
    end

    # Access to subscriptions controller.
    # @return [SubscriptionsApi] Returns the controller instance.
    def subscriptions
      @subscriptions ||= SubscriptionsApi.new config
    end

    # Access to team controller.
    # @return [TeamApi] Returns the controller instance.
    def team
      @team ||= TeamApi.new config
    end

    # Access to terminal controller.
    # @return [TerminalApi] Returns the controller instance.
    def terminal
      @terminal ||= TerminalApi.new config
    end

    # Access to vendors controller.
    # @return [VendorsApi] Returns the controller instance.
    def vendors
      @vendors ||= VendorsApi.new config
    end

    def initialize(connection: nil, adapter: :net_http_persistent, timeout: 60,
                   max_retries: 0, retry_interval: 1, backoff_factor: 2,
                   retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
                   retry_methods: %i[get put], environment: 'production',
                   custom_url: 'https://connect.squareup.com',
                   square_version: '2022-07-20', access_token: '',
                   user_agent_detail: '', additional_headers: {}, config: nil)
      @config = if config.nil?
                  Configuration.new(connection: connection, adapter: adapter,
                                    timeout: timeout, max_retries: max_retries,
                                    retry_interval: retry_interval,
                                    backoff_factor: backoff_factor,
                                    retry_statuses: retry_statuses,
                                    retry_methods: retry_methods,
                                    environment: environment,
                                    custom_url: custom_url,
                                    square_version: square_version,
                                    access_token: access_token,
                                    user_agent_detail: user_agent_detail,
                                    additional_headers: additional_headers)
                else
                  config
                end
    end
  end
end
