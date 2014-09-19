package v2.com.playhaven.interstitial;

public class PHContentEnums
{
    public enum Error
    {
        CouldNotLoadURL("Ad was unable to load URL"), 
        FailedSubrequest("Sub-request started from ad unit failed"), 
        NoBoundingBox("The interstitial you requested was not able to be shown because it is missing required orientation data."), 
        NoResponseField("No 'response' field in JSON resposne");
        
        private String error;
        
        private Error(final String error) {
            this.error = error;
        }
        
        public String getMessage() {
            return this.error;
        }
    }
    
    public enum IntentArgument
    {
        Content("init_content_contentview"), 
        CustomCloseBtn("custom_close"), 
        Tag("content_tag");
        
        private String key;
        
        private IntentArgument(final String key) {
            this.key = key;
        }
        
        public String getKey() {
            return this.key;
        }
    }
    
    public enum Purchase
    {
        CookieKey("cookie"), 
        NameKey("name"), 
        ProductIDKey("product"), 
        QuantityKey("quantity"), 
        ReceiptKey("receipt"), 
        SignatureKey("signature");
        
        private final String keyName;
        
        private Purchase(final String keyName) {
            this.keyName = keyName;
        }
        
        public String key() {
            return this.keyName;
        }
    }
    
    public enum Reward
    {
        IDKey("reward"), 
        QuantityKey("quantity"), 
        ReceiptKey("receipt"), 
        SignatureKey("signature");
        
        private final String keyName;
        
        private Reward(final String keyName) {
            this.keyName = keyName;
        }
        
        public String key() {
            return this.keyName;
        }
    }
}
