.class public Lcom/facebook/orca/server/SetSettingsParams;
.super Ljava/lang/Object;
.source "SetSettingsParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/server/SetSettingsParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Lcom/facebook/orca/notify/NotificationSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/facebook/orca/server/SetSettingsParams$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/SetSettingsParams$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/SetSettingsParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/server/SetSettingsParams;->a:Z

    .line 29
    const-class v0, Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSetting;

    iput-object v0, p0, Lcom/facebook/orca/server/SetSettingsParams;->b:Lcom/facebook/orca/notify/NotificationSetting;

    .line 30
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/server/SetSettingsParams$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/SetSettingsParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/server/SetSettingsParamsBuilder;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/facebook/orca/server/SetSettingsParamsBuilder;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/server/SetSettingsParams;->a:Z

    .line 24
    invoke-virtual {p1}, Lcom/facebook/orca/server/SetSettingsParamsBuilder;->b()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/SetSettingsParams;->b:Lcom/facebook/orca/notify/NotificationSetting;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/facebook/orca/server/SetSettingsParams;->a:Z

    return v0
.end method

.method public b()Lcom/facebook/orca/notify/NotificationSetting;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/server/SetSettingsParams;->b:Lcom/facebook/orca/notify/NotificationSetting;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/facebook/orca/server/SetSettingsParams;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/server/SetSettingsParams;->b:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
