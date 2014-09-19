package com.android.vending.billing;

import android.os.*;

public interface IInAppBillingService extends IInterface
{
    int consumePurchase(int p0, String p1, String p2) throws RemoteException;
    
    Bundle getBuyIntent(int p0, String p1, String p2, String p3, String p4) throws RemoteException;
    
    Bundle getPurchases(int p0, String p1, String p2, String p3) throws RemoteException;
    
    Bundle getSkuDetails(int p0, String p1, String p2, Bundle p3) throws RemoteException;
    
    int isBillingSupported(int p0, String p1, String p2) throws RemoteException;
    
    public abstract static class Stub extends Binder implements IInAppBillingService
    {
        private static final String DESCRIPTOR = "com.android.vending.billing.IInAppBillingService";
        static final int TRANSACTION_consumePurchase = 5;
        static final int TRANSACTION_getBuyIntent = 3;
        static final int TRANSACTION_getPurchases = 4;
        static final int TRANSACTION_getSkuDetails = 2;
        static final int TRANSACTION_isBillingSupported = 1;
        
        public Stub() {
            super();
            this.attachInterface((IInterface)this, "com.android.vending.billing.IInAppBillingService");
        }
        
        public static IInAppBillingService asInterface(IBinder binder) {
            IInterface queryLocalInterface;
            if (binder == null) {
                return null;
            }
            queryLocalInterface = binder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
            if (queryLocalInterface != null && queryLocalInterface instanceof IInAppBillingService) {
                return (IInAppBillingService)queryLocalInterface;
            }
            return new Proxy(binder);
        }
        
        public IBinder asBinder() {
            return (IBinder)this;
        }
        
        public boolean onTransact(int n, Parcel parcel, Parcel parcel2, int n2) throws RemoteException {
            int billingSupported;
            int int1;
            String string;
            String string2;
            Bundle bundle;
            Bundle skuDetails;
            Bundle buyIntent;
            Bundle purchases;
            int consumePurchase;
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
                    billingSupported = this.isBillingSupported(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(billingSupported);
                    return true;
                }
                case 2: {
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    int1 = parcel.readInt();
                    string = parcel.readString();
                    string2 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                    }
                    else {
                        bundle = null;
                    }
                    skuDetails = this.getSkuDetails(int1, string, string2, bundle);
                    parcel2.writeNoException();
                    if (skuDetails != null) {
                        parcel2.writeInt(1);
                        skuDetails.writeToParcel(parcel2, 1);
                    }
                    else {
                        parcel2.writeInt(0);
                    }
                    return true;
                }
                case 3: {
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    buyIntent = this.getBuyIntent(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (buyIntent != null) {
                        parcel2.writeInt(1);
                        buyIntent.writeToParcel(parcel2, 1);
                    }
                    else {
                        parcel2.writeInt(0);
                    }
                    return true;
                }
                case 4: {
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    purchases = this.getPurchases(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (purchases != null) {
                        parcel2.writeInt(1);
                        purchases.writeToParcel(parcel2, 1);
                    }
                    else {
                        parcel2.writeInt(0);
                    }
                    return true;
                }
                case 5: {
                    parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                    consumePurchase = this.consumePurchase(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(consumePurchase);
                    return true;
                }
            }
        }
        
        private static class Proxy implements IInAppBillingService
        {
            private IBinder mRemote;
            
            Proxy(IBinder mRemote) {
                super();
                this.mRemote = mRemote;
            }
            
            public IBinder asBinder() {
                return this.mRemote;
            }
            
            @Override
            public int consumePurchase(int n, String s, String s2) throws RemoteException {
                Parcel obtain;
                Parcel obtain2;
                obtain = Parcel.obtain();
                obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(n);
                    obtain.writeString(s);
                    obtain.writeString(s2);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
            
            @Override
            public Bundle getBuyIntent(int n, String s, String s2, String s3, String s4) throws RemoteException {
                Parcel obtain;
                Parcel obtain2;
                Bundle bundle;
                obtain = Parcel.obtain();
                obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(n);
                    obtain.writeString(s);
                    obtain.writeString(s2);
                    obtain.writeString(s3);
                    obtain.writeString(s4);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        bundle = (Bundle)Bundle.CREATOR.createFromParcel(obtain2);
                    }
                    else {
                        bundle = null;
                    }
                    return bundle;
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
            
            public String getInterfaceDescriptor() {
                return "com.android.vending.billing.IInAppBillingService";
            }
            
            @Override
            public Bundle getPurchases(int n, String s, String s2, String s3) throws RemoteException {
                Parcel obtain;
                Parcel obtain2;
                Bundle bundle;
                obtain = Parcel.obtain();
                obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(n);
                    obtain.writeString(s);
                    obtain.writeString(s2);
                    obtain.writeString(s3);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        bundle = (Bundle)Bundle.CREATOR.createFromParcel(obtain2);
                    }
                    else {
                        bundle = null;
                    }
                    return bundle;
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
            
            @Override
            public Bundle getSkuDetails(int n, String s, String s2, Bundle bundle) throws RemoteException {
                Parcel obtain;
                Parcel obtain2;
                Bundle bundle2;
                while (true) {
                    obtain = Parcel.obtain();
                    obtain2 = Parcel.obtain();
                    try {
                        obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                        obtain.writeInt(n);
                        obtain.writeString(s);
                        obtain.writeString(s2);
                        if (bundle != null) {
                            obtain.writeInt(1);
                            bundle.writeToParcel(obtain, 0);
                        }
                        else {
                            obtain.writeInt(0);
                        }
                        this.mRemote.transact(2, obtain, obtain2, 0);
                        obtain2.readException();
                        if (obtain2.readInt() != 0) {
                            bundle2 = (Bundle)Bundle.CREATOR.createFromParcel(obtain2);
                            return bundle2;
                        }
                    }
                    finally {
                        obtain2.recycle();
                        obtain.recycle();
                    }
                    bundle2 = null;
                    return bundle2;
                }
            }
            
            @Override
            public int isBillingSupported(int n, String s, String s2) throws RemoteException {
                Parcel obtain;
                Parcel obtain2;
                obtain = Parcel.obtain();
                obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.android.vending.billing.IInAppBillingService");
                    obtain.writeInt(n);
                    obtain.writeString(s);
                    obtain.writeString(s2);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
