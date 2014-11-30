.class public Lcom/facebook/orca/threads/ThreadParticipant;
.super Ljava/lang/Object;
.source "ThreadParticipant.java"

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
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/orca/threads/ParticipantInfo;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/orca/notify/NotificationSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/facebook/orca/threads/ThreadParticipant$1;

    invoke-direct {v0}, Lcom/facebook/orca/threads/ThreadParticipant$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/threads/ThreadParticipant;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->b:Ljava/lang/String;

    .line 32
    const-class v0, Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/NotificationSetting;

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->c:Lcom/facebook/orca/notify/NotificationSetting;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/orca/threads/ThreadParticipant$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/facebook/orca/threads/ThreadParticipant;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/threads/ThreadParticipantBuilder;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 25
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->c()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->c:Lcom/facebook/orca/notify/NotificationSetting;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/facebook/orca/notify/NotificationSetting;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->c:Lcom/facebook/orca/notify/NotificationSetting;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipant;->c:Lcom/facebook/orca/notify/NotificationSetting;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 88
    return-void
.end method
