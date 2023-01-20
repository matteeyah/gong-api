=begin
#Gong API

#<h2>Overview</h2> <p> The Gong API allows you to: </p> <ol> <li> Receive the following information from Gong: <ol type=\"a\"> <li> Your company's <a href=\"#tag--Calls\">calls</a> in Gong </li> <li> Your company's <a href=\"#tag--Users\">users</a> in Gong </li> <li> Your company's user <a href=\"#tag--Stats\">stats</a> in Gong </li> <li> Your company's user <a href=\"#tag--Settings\">settings</a> in Gong </li> <li> Your company's <a href=\"#tag--Library\">libraries</a> in Gong </li> </ol></li> <li> <a href=\"#post-/v2/calls\">Upload</a> new or  <a href=\"#put-/v2/calls/-id-/media\">update</a>  call recordings in Gong, in order to support cases where you have an internal system that records  calls or obtains them from a third-party entity. </li> <li> <a href=\"#post-/v2/data-privacy/erase-data-for-email-address\">Data Privacy</a>:  Delete users and all their associated elements.</li> <li> Upload <a href=\"#tag--CRM\">CRM</a> data into Gong.  </li> </ol> <p>Base URL for all API calls is <a href=\"https://us-55616.api.gong.io\"> https://us-55616.api.gong.io </a> </p> <h2>Authentication</h2>  <p> There are two ways to retrieve credentials to the Gong Public API: </p> <ol><li>Retrieve Manually:<br> <p> In the <a href=\"https://app.gong.io/company/api\">Gong API Page</a> (you must be a technical administrator in Gong), click \"Create\" to receive an <b>Access Key</b>  and an <b>Access Key Secret</b>.<br> </p> <p> Use the Basic Authorization HTTP header (as per <a target=\"_blank\" href=\"https://www.rfc-editor.org/rfc/rfc7617.txt\">RFC</a>) to access the Public API as shown below:<br> <code>Authorization: Basic &lt;token&gt;</code><br> </p> <p> To create the basic token, combine the <b>Access Key</b> and the <b>Access Key Secret</b> with  colon (:) and then encode in Base64 as following:<br> <code>Base64(&lt;accessKey&gt; : &lt;accessKeySecret&gt;)</code><br><br> </p></li> <li>Retrieve through OAuth<br> <p> To obtain the Bearer token, follow the steps described in the <a target=\"_blank\" href=\"https://help.gong.io/hc/en-us/articles/360056677792\">Gong OAuth Guide</a>. <br></p> <p> After obtaining the token, use the Bearer Authorization HTTP header (as per <a target=\"_blank\" href=\"https://www.rfc-editor.org/rfc/rfc6750.txt\">RFC</a>) to access the Public API as shown below:<br> <code>Authorization: Bearer &lt;token&gt;</code> </p> </li></ol> <h2>Limits</h2>  <p> By default Gong limits your company's access to the service to 3 API calls per second, and 10,000 API calls per day. </p> <p> When the rate of API calls exceeds these limits an HTTP status code <b>429</b> is returned and a <b>Retry-After</b> header indicates  how many seconds to wait before making a new request. </p><p> If required, contact help@gong.io to change these limits. </p>  <h2>Cursors</h2>  <p> Some API calls that return a list are limited in the amount of records they may return, so multiple API calls may be  required to bring all records. Such an API call also returns a <b>records</b> field, which contains the number of records  in the current page, the current page number and the total number of records. </p> <p> In cases where the total number of records exceeds the number of records thus far retrieved, the <b>records</b> field will also  contain a <b>cursor</b> field which can be used to access the next page of records. To retrieve the next page, repeat the API call with  the <b>cursor</b> value as supplied by the previous API call. All other request inputs should remain the same. </p> <h2>Forward Compatibility</h2>  <p> When coding a system to accept Gong data, take into account that Gong may, without prior warning, add fields to the JSON output.  It is recommended to future proof your code so that it disregards all JSON fields you don't actually use.  </p><p></p>

OpenAPI spec version: V2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.37
=end

require 'date'

module GongAPI
  # User daily activity
  class DailyActivityWithDates
    # List of IDs of calls in which this user is the host.
    attr_accessor :calls_as_host

    # List of IDs of calls in which this user is participant (not host)
    attr_accessor :calls_attended

    # List of IDs of calls in which a user gave at least one comment.
    attr_accessor :calls_comments_given

    # List of IDs of calls in which a user received at least one comment on the users calls.
    attr_accessor :calls_comments_received

    # List of IDs of calls where the user gave feedback.
    attr_accessor :calls_gave_feedback

    #  List of IDs of calls in which someone pressed the \"Mark as reviewed\".
    attr_accessor :calls_marked_as_feedback_given

    # List of IDs of calls in which someone pressed the \"Mark as reviewed\" on the users calls.
    attr_accessor :calls_marked_as_feedback_received

    #  List of IDs of calls where the user received feedback.
    attr_accessor :calls_received_feedback

    #  List of IDs of calls where the user requested feedback.
    attr_accessor :calls_requested_feedback

    # List of IDs of calls in which the user filled scorecards.
    attr_accessor :calls_scorecards_filled

    # List of IDs of calls in which someone filled a scorecard on the users calls.
    attr_accessor :calls_scorecards_received

    # List of IDs of calls the user shared with people outside the company.
    attr_accessor :calls_shared_externally

    # List of IDs of calls the user shared with other users inside the company.
    attr_accessor :calls_shared_internally

    # The start of the day in the ISO-8601 format (e.g., '2018-02-18T02:30:00-07:00' or '2018-02-18T08:00:00Z', where Z stands for UTC).
    attr_accessor :from_date

    # List of IDs of calls, not belonging to this user, that the user listened to.
    attr_accessor :others_calls_listened_to

    # List of IDs of the user's own calls, that the user listened to.
    attr_accessor :own_calls_listened_to

    # The end of the day in the ISO-8601 format (e.g., '2018-02-18T02:30:00-07:00' or '2018-02-18T08:00:00Z', where Z stands for UTC).
    attr_accessor :to_date

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'calls_as_host' => :'callsAsHost',
        :'calls_attended' => :'callsAttended',
        :'calls_comments_given' => :'callsCommentsGiven',
        :'calls_comments_received' => :'callsCommentsReceived',
        :'calls_gave_feedback' => :'callsGaveFeedback',
        :'calls_marked_as_feedback_given' => :'callsMarkedAsFeedbackGiven',
        :'calls_marked_as_feedback_received' => :'callsMarkedAsFeedbackReceived',
        :'calls_received_feedback' => :'callsReceivedFeedback',
        :'calls_requested_feedback' => :'callsRequestedFeedback',
        :'calls_scorecards_filled' => :'callsScorecardsFilled',
        :'calls_scorecards_received' => :'callsScorecardsReceived',
        :'calls_shared_externally' => :'callsSharedExternally',
        :'calls_shared_internally' => :'callsSharedInternally',
        :'from_date' => :'fromDate',
        :'others_calls_listened_to' => :'othersCallsListenedTo',
        :'own_calls_listened_to' => :'ownCallsListenedTo',
        :'to_date' => :'toDate'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'calls_as_host' => :'Object',
        :'calls_attended' => :'Object',
        :'calls_comments_given' => :'Object',
        :'calls_comments_received' => :'Object',
        :'calls_gave_feedback' => :'Object',
        :'calls_marked_as_feedback_given' => :'Object',
        :'calls_marked_as_feedback_received' => :'Object',
        :'calls_received_feedback' => :'Object',
        :'calls_requested_feedback' => :'Object',
        :'calls_scorecards_filled' => :'Object',
        :'calls_scorecards_received' => :'Object',
        :'calls_shared_externally' => :'Object',
        :'calls_shared_internally' => :'Object',
        :'from_date' => :'Object',
        :'others_calls_listened_to' => :'Object',
        :'own_calls_listened_to' => :'Object',
        :'to_date' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `GongAPI::DailyActivityWithDates` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `GongAPI::DailyActivityWithDates`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'calls_as_host')
        self.calls_as_host = attributes[:'calls_as_host']
      end

      if attributes.key?(:'calls_attended')
        self.calls_attended = attributes[:'calls_attended']
      end

      if attributes.key?(:'calls_comments_given')
        self.calls_comments_given = attributes[:'calls_comments_given']
      end

      if attributes.key?(:'calls_comments_received')
        self.calls_comments_received = attributes[:'calls_comments_received']
      end

      if attributes.key?(:'calls_gave_feedback')
        self.calls_gave_feedback = attributes[:'calls_gave_feedback']
      end

      if attributes.key?(:'calls_marked_as_feedback_given')
        self.calls_marked_as_feedback_given = attributes[:'calls_marked_as_feedback_given']
      end

      if attributes.key?(:'calls_marked_as_feedback_received')
        self.calls_marked_as_feedback_received = attributes[:'calls_marked_as_feedback_received']
      end

      if attributes.key?(:'calls_received_feedback')
        self.calls_received_feedback = attributes[:'calls_received_feedback']
      end

      if attributes.key?(:'calls_requested_feedback')
        self.calls_requested_feedback = attributes[:'calls_requested_feedback']
      end

      if attributes.key?(:'calls_scorecards_filled')
        self.calls_scorecards_filled = attributes[:'calls_scorecards_filled']
      end

      if attributes.key?(:'calls_scorecards_received')
        self.calls_scorecards_received = attributes[:'calls_scorecards_received']
      end

      if attributes.key?(:'calls_shared_externally')
        self.calls_shared_externally = attributes[:'calls_shared_externally']
      end

      if attributes.key?(:'calls_shared_internally')
        self.calls_shared_internally = attributes[:'calls_shared_internally']
      end

      if attributes.key?(:'from_date')
        self.from_date = attributes[:'from_date']
      end

      if attributes.key?(:'others_calls_listened_to')
        self.others_calls_listened_to = attributes[:'others_calls_listened_to']
      end

      if attributes.key?(:'own_calls_listened_to')
        self.own_calls_listened_to = attributes[:'own_calls_listened_to']
      end

      if attributes.key?(:'to_date')
        self.to_date = attributes[:'to_date']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          calls_as_host == o.calls_as_host &&
          calls_attended == o.calls_attended &&
          calls_comments_given == o.calls_comments_given &&
          calls_comments_received == o.calls_comments_received &&
          calls_gave_feedback == o.calls_gave_feedback &&
          calls_marked_as_feedback_given == o.calls_marked_as_feedback_given &&
          calls_marked_as_feedback_received == o.calls_marked_as_feedback_received &&
          calls_received_feedback == o.calls_received_feedback &&
          calls_requested_feedback == o.calls_requested_feedback &&
          calls_scorecards_filled == o.calls_scorecards_filled &&
          calls_scorecards_received == o.calls_scorecards_received &&
          calls_shared_externally == o.calls_shared_externally &&
          calls_shared_internally == o.calls_shared_internally &&
          from_date == o.from_date &&
          others_calls_listened_to == o.others_calls_listened_to &&
          own_calls_listened_to == o.own_calls_listened_to &&
          to_date == o.to_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [calls_as_host, calls_attended, calls_comments_given, calls_comments_received, calls_gave_feedback, calls_marked_as_feedback_given, calls_marked_as_feedback_received, calls_received_feedback, calls_requested_feedback, calls_scorecards_filled, calls_scorecards_received, calls_shared_externally, calls_shared_internally, from_date, others_calls_listened_to, own_calls_listened_to, to_date].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        GongAPI.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
