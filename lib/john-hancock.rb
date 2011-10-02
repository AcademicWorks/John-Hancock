require 'digest/md5'
module JohnHancock

  def sign(shared_secret = "", signature_keys = ["signature"])

    hash_signature = self.clone

    # Remove the "calculated_signature" entry
    signature_keys.each do |signature_key|
    	hash_signature.delete(signature_key.to_s)
    	hash_signature.delete(signature_key.to_sym)
    end

    calculated_signature = hash_signature.collect { |k, v| "#{k}=#{v}" }
    calculated_signature = calculated_signature.sort 
    calculated_signature = calculated_signature.join

    # Final calculated_signature to compare against
    calculated_signature = Digest::MD5.hexdigest(shared_secret + calculated_signature)
  end

end

Hash.send(:include,JohnHancock)