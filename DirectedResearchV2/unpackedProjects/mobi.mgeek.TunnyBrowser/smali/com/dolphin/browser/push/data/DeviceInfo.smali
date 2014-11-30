.class public final Lcom/dolphin/browser/push/data/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dolphin/browser/push/data/DeviceInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:I

.field public f:J

.field public g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/dolphin/browser/push/data/d;

    invoke-direct {v0}, Lcom/dolphin/browser/push/data/d;-><init>()V

    sput-object v0, Lcom/dolphin/browser/push/data/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->b:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->e:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->f:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->g:J

    .line 119
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/dolphin/browser/push/data/d;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/data/DeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    .line 59
    iput p2, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->b:I

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    .line 47
    :try_start_0
    const-string v2, "name"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    .line 48
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->b:I

    .line 49
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    .line 50
    const-string v0, "offline_tm"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 49
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/push/data/DeviceInfo;)I
    .locals 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-nez v0, :cond_0

    .line 124
    const/4 v0, -0x1

    .line 128
    :goto_0
    return v0

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-eqz v0, :cond_1

    .line 126
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    iget v0, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->e:I

    iget v1, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->e:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 73
    :try_start_0
    const-string v1, "name"

    iget-object v2, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v1, "type"

    iget v2, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/push/data/DeviceInfo;->a(Lcom/dolphin/browser/push/data/DeviceInfo;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/dolphin/browser/push/data/DeviceInfo;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-boolean v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-wide v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget-wide v0, p0, Lcom/dolphin/browser/push/data/DeviceInfo;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
