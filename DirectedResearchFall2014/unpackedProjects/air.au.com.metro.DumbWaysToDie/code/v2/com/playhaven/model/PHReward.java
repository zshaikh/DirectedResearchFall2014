package v2.com.playhaven.model;

import android.os.*;

public class PHReward implements Parcelable
{
    public static final Parcelable$Creator<PHReward> CREATOR;
    public String name;
    public int quantity;
    public String receipt;
    
    static {
        CREATOR = (Parcelable$Creator)new Parcelable$Creator<PHReward>() {
            public PHReward createFromParcel(final Parcel parcel) {
                return new PHReward(parcel);
            }
            
            public PHReward[] newArray(final int n) {
                return new PHReward[n];
            }
        };
    }
    
    public PHReward() {
        super();
    }
    
    public PHReward(final Parcel parcel) {
        super();
        this.name = parcel.readString();
        if (this.name != null && this.name.equals("null")) {
            this.name = null;
        }
        this.quantity = parcel.readInt();
        this.receipt = parcel.readString();
        if (this.receipt != null && this.receipt.equals("null")) {
            this.receipt = null;
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        String name;
        if (this.name == null) {
            name = "null";
        }
        else {
            name = this.name;
        }
        parcel.writeString(name);
        parcel.writeInt(this.quantity);
        String receipt;
        if (this.receipt == null) {
            receipt = "null";
        }
        else {
            receipt = this.receipt;
        }
        parcel.writeString(receipt);
    }
}
