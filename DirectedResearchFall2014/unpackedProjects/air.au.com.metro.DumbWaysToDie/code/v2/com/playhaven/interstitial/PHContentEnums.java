package v2.com.playhaven.interstitial;

public class PHContentEnums
{
    public enum Error
    {
        CouldNotLoadURL("CouldNotLoadURL", 1, "Ad was unable to load URL"), 
        FailedSubrequest("FailedSubrequest", 2, "Sub-request started from ad unit failed"), 
        NoBoundingBox("NoBoundingBox", 0, "The interstitial you requested was not able to be shown because it is missing required orientation data."), 
        NoResponseField("NoResponseField", 3, "No 'response' field in JSON resposne");
        
        private String error;
        
        private Error(final String name, final int ordinal, final String error) {
            this.error = error;
        }
        
        public String getMessage() {
            return this.error;
        }
    }
    
    public enum IntentArgument
    {
        Content("Content", 1, "init_content_contentview"), 
        CustomCloseBtn("CustomCloseBtn", 0, "custom_close"), 
        Tag("Tag", 2, "content_tag");
        
        private String key;
        
        private IntentArgument(final String name, final int ordinal, final String key) {
            this.key = key;
        }
        
        public String getKey() {
            return this.key;
        }
    }
    
    public enum Purchase
    {
        CookieKey("CookieKey", 4, "cookie"), 
        NameKey("NameKey", 1, "name"), 
        ProductIDKey("ProductIDKey", 0, "product"), 
        QuantityKey("QuantityKey", 5, "quantity"), 
        ReceiptKey("ReceiptKey", 2, "receipt"), 
        SignatureKey("SignatureKey", 3, "signature");
        
        private final String keyName;
        
        private Purchase(final String name, final int ordinal, final String keyName) {
            this.keyName = keyName;
        }
        
        public String key() {
            return this.keyName;
        }
    }
    
    public enum Reward
    {
        IDKey("IDKey", 0, "reward"), 
        QuantityKey("QuantityKey", 1, "quantity"), 
        ReceiptKey("ReceiptKey", 2, "receipt"), 
        SignatureKey("SignatureKey", 3, "signature");
        
        private final String keyName;
        
        private Reward(final String name, final int ordinal, final String keyName) {
            this.keyName = keyName;
        }
        
        public String key() {
            return this.keyName;
        }
    }
}
