.class final Lcom/vungle/sdk/ae;
.super Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;
.source "vungle"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vungle/sdk/ae;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/vungle/sdk/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/vungle/sdk/ae;

    invoke-direct {v0}, Lcom/vungle/sdk/ae;-><init>()V

    sput-object v0, Lcom/vungle/sdk/ae;->d:Lcom/vungle/sdk/ae;

    .line 41
    new-instance v0, Lcom/vungle/sdk/ae$1;

    invoke-direct {v0}, Lcom/vungle/sdk/ae$1;-><init>()V

    sput-object v0, Lcom/vungle/sdk/ae;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;-><init>(B)V

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->a:I

    .line 22
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/vungle/sdk/ae;-><init>()V

    return-void
.end method

.method static a()Lcom/vungle/sdk/ae;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/vungle/sdk/ae;->d:Lcom/vungle/sdk/ae;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/os/Parcel;)Lcom/vungle/sdk/ae;
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->b(Landroid/os/Parcel;)Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;

    .line 38
    return-object p0
.end method

.method protected final a(Lcom/vungle/sdk/ah;Lcom/vungle/sdk/aj;Lcom/vungle/sdk/am;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method protected final bridge synthetic b(Landroid/os/Parcel;)Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->b(Landroid/os/Parcel;)Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 33
    return-void
.end method
