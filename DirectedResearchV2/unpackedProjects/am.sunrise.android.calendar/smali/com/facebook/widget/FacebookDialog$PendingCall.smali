.class public Lcom/facebook/widget/FacebookDialog$PendingCall;
.super Ljava/lang/Object;
.source "FacebookDialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/widget/FacebookDialog$PendingCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callId:Ljava/util/UUID;

.field private requestCode:I

.field private requestIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1380
    new-instance v0, Lcom/facebook/widget/FacebookDialog$PendingCall$1;

    invoke-direct {v0}, Lcom/facebook/widget/FacebookDialog$PendingCall$1;-><init>()V

    sput-object v0, Lcom/facebook/widget/FacebookDialog$PendingCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 1321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1322
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->callId:Ljava/util/UUID;

    .line 1323
    iput p1, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->requestCode:I

    .line 1324
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->callId:Ljava/util/UUID;

    .line 1328
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->requestIntent:Landroid/content/Intent;

    .line 1329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->requestCode:I

    .line 1330
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/widget/FacebookDialog$1;)V
    .locals 0

    .prologue
    .line 1311
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/FacebookDialog$PendingCall;I)V
    .locals 0

    .prologue
    .line 1311
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->setRequestCode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1311
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->setRequestIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private setRequestCode(I)V
    .locals 0

    .prologue
    .line 1356
    iput p1, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->requestCode:I

    .line 1357
    return-void
.end method

.method private setRequestIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->requestIntent:Landroid/content/Intent;

    .line 1334
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->requestIntent:Landroid/content/Intent;

    const-string v1, "com.facebook.platform.protocol.CALL_ID"

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->callId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1335
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1370
    const/4 v0, 0x0

    return v0
.end method

.method public getCallId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->callId:Ljava/util/UUID;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 1365
    iget v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->requestCode:I

    return v0
.end method

.method public getRequestIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->requestIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->callId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1377
    iget v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->requestCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1378
    return-void
.end method
