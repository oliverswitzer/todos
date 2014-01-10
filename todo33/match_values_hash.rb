
class Hash
  def keys_of(*args)
    returned_keys = []
    args.each do |value|
      self.each do |k, v|
        if v == value
          returned_keys << k
        end
      end
    end
    returned_keys
  end
end
