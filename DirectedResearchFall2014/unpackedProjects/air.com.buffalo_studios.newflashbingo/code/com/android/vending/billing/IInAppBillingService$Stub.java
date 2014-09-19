package com.android.vending.billing;

import android.os.*;

public abstract class IInAppBillingService$Stub extends Binder implements IInAppBillingService
{
    public IInAppBillingService$Stub() {
        super();
        this.attachInterface((IInterface)this, "com.android.vending.billing.IInAppBillingService");
    }
    
    public static IInAppBillingService a(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
        if (queryLocalInterface != null && queryLocalInterface instanceof IInAppBillingService) {
            return (IInAppBillingService)queryLocalInterface;
        }
        return new IInAppBillingService$Stub$Proxy(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.android.vending.billing.IInAppBillingService");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                final int a = this.a(parcel.readInt(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(a);
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                final int int1 = parcel.readInt();
                final String string = parcel.readString();
                final String string2 = parcel.readString();
                Bundle bundle;
                if (parcel.readInt() != 0) {
                    bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                }
                else {
                    bundle = null;
                }
                final Bundle a2 = this.a(int1, string, string2, bundle);
                parcel2.writeNoException();
                if (a2 != null) {
                    parcel2.writeInt(1);
                    a2.writeToParcel(parcel2, 1);
                }
                else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            case 3: {
                parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                final Bundle a3 = this.a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                if (a3 != null) {
                    parcel2.writeInt(1);
                    a3.writeToParcel(parcel2, 1);
                }
                else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            case 4: {
                parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                final Bundle a4 = this.a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                if (a4 != null) {
                    parcel2.writeInt(1);
                    a4.writeToParcel(parcel2, 1);
                }
                else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            case 5: {
                parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                final int b = this.b(parcel.readInt(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(b);
                return true;
            }
        }
    }
}
