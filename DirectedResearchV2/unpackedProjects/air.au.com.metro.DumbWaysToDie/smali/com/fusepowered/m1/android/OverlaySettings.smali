.class Lcom/fusepowered/m1/android/OverlaySettings;
.super Ljava/lang/Object;
.source "OverlaySettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/fusepowered/m1/android/OverlaySettings;",
            ">;"
        }
    .end annotation
.end field

.field static final PROPERTIES_ACID:Ljava/lang/String; = "acid"

.field static final PROPERTIES_ALLOW_ORIENTATION_CHANGE:Ljava/lang/String; = "allowOrientationChange"

.field static final PROPERTIES_CUSTOM_CLOSE:Ljava/lang/String; = "useCustomClose"

.field static final PROPERTIES_ENABLE_HARDWARE_ACCEL:Ljava/lang/String; = "enableHardwareAccel"

.field static final PROPERTIES_FORCE_ORIENTATION:Ljava/lang/String; = "forceOrientation"

.field static final PROPERTIES_HEIGHT:Ljava/lang/String; = "height"

.field static final PROPERTIES_MODAL:Ljava/lang/String; = "modal"

.field static final PROPERTIES_ORIENTATION:Ljava/lang/String; = "orientation"

.field static final PROPERTIES_TRANSITION:Ljava/lang/String; = "transition"

.field static final PROPERTIES_TRANSITION_DURATION:Ljava/lang/String; = "transitionDuration"

.field static final PROPERTIES_TRANSPARENT:Ljava/lang/String; = "transparent"

.field static final PROPERTIES_WIDTH:Ljava/lang/String; = "width"


# instance fields
.field adUrl:Ljava/lang/String;

.field allowOrientationChange:Z

.field content:Ljava/lang/String;

.field creatorAdImplId:J

.field hasLoadedExpandUrl:Z

.field height:I

.field isFromInterstitial:Z

.field private isTransparent:Z
    .annotation runtime Lcom/fusepowered/m1/google/gson/annotations/SerializedName;
        value = "transparent"
    .end annotation
.end field

.field mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

.field modal:Z

.field orientation:Ljava/lang/String;

.field shouldLaunchToOverlay:Z

.field shouldResizeOverlay:I

.field private transition:Ljava/lang/String;

.field private transitionTimeInMillis:J
    .annotation runtime Lcom/fusepowered/m1/google/gson/annotations/SerializedName;
        value = "transitionDuration"
    .end annotation
.end field

.field urlToLoad:Ljava/lang/String;

.field private useCustomClose:Z

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/fusepowered/m1/android/OverlaySettings$1;

    invoke-direct {v0}, Lcom/fusepowered/m1/android/OverlaySettings$1;-><init>()V

    sput-object v0, Lcom/fusepowered/m1/android/OverlaySettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transition:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->orientation:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->allowOrientationChange:Z

    .line 40
    const-string v0, ""

    iput-object v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->content:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->adUrl:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->hasLoadedExpandUrl:Z

    .line 93
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, ""

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v2, ""

    iput-object v3, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transition:Ljava/lang/String;

    .line 34
    const-string v2, ""

    iput-object v3, p0, Lcom/fusepowered/m1/android/OverlaySettings;->orientation:Ljava/lang/String;

    .line 35
    const-string v2, ""

    iput-object v3, p0, Lcom/fusepowered/m1/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    .line 39
    iput-boolean v5, p0, Lcom/fusepowered/m1/android/OverlaySettings;->allowOrientationChange:Z

    .line 40
    const-string v2, ""

    iput-object v3, p0, Lcom/fusepowered/m1/android/OverlaySettings;->content:Ljava/lang/String;

    .line 41
    const-string v2, ""

    iput-object v3, p0, Lcom/fusepowered/m1/android/OverlaySettings;->adUrl:Ljava/lang/String;

    .line 45
    iput-boolean v4, p0, Lcom/fusepowered/m1/android/OverlaySettings;->hasLoadedExpandUrl:Z

    .line 63
    const/4 v2, 0x6

    :try_start_0
    new-array v0, v2, [Z

    .line 64
    .local v0, "booleanValues":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 65
    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->shouldLaunchToOverlay:Z

    .line 66
    const/4 v2, 0x1

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->isTransparent:Z

    .line 67
    const/4 v2, 0x2

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->useCustomClose:Z

    .line 68
    const/4 v2, 0x3

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->modal:Z

    .line 69
    const/4 v2, 0x4

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->isFromInterstitial:Z

    .line 70
    const/4 v2, 0x5

    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->allowOrientationChange:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->shouldResizeOverlay:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transition:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transitionTimeInMillis:J

    .line 74
    iget-wide v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transitionTimeInMillis:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    move-wide v2, v6

    :goto_0
    iput-wide v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transitionTimeInMillis:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->orientation:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->creatorAdImplId:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->height:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->width:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->content:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->adUrl:Ljava/lang/String;

    .line 82
    const-class v2, Lcom/fusepowered/m1/android/HttpMMHeaders;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m1/android/HttpMMHeaders;

    iput-object v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    .line 88
    .end local v0    # "booleanValues":[Z
    :goto_1
    return-void

    .line 74
    .restart local v0    # "booleanValues":[Z
    :cond_0
    iget-wide v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transitionTimeInMillis:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v0    # "booleanValues":[Z
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static final createFromJson(Ljava/lang/String;)Lcom/fusepowered/m1/android/OverlaySettings;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lcom/fusepowered/m1/google/gson/Gson;

    invoke-direct {v0}, Lcom/fusepowered/m1/google/gson/Gson;-><init>()V

    .line 53
    .local v0, "gson":Lcom/fusepowered/m1/google/gson/Gson;
    const-class v2, Lcom/fusepowered/m1/android/OverlaySettings;

    invoke-virtual {v0, p0, v2}, Lcom/fusepowered/m1/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/OverlaySettings;

    .line 54
    .local v1, "settings":Lcom/fusepowered/m1/android/OverlaySettings;
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method enableHardwareAccel()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/HttpMMHeaders;->enableHardwareAccel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getAcid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    iget-object v0, v0, Lcom/fusepowered/m1/android/HttpMMHeaders;->acid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    iget-object v0, v0, Lcom/fusepowered/m1/android/HttpMMHeaders;->acid:Ljava/lang/String;

    .line 217
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method getIsTransparent()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->isTransparent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/HttpMMHeaders;->isTransparent:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTransition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transition:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transition:Ljava/lang/String;

    .line 207
    :goto_0
    return-object v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    iget-object v0, v0, Lcom/fusepowered/m1/android/HttpMMHeaders;->transition:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    iget-object v0, v0, Lcom/fusepowered/m1/android/HttpMMHeaders;->transition:Ljava/lang/String;

    goto :goto_0

    .line 207
    :cond_1
    const-string v0, "none"

    goto :goto_0
.end method

.method getTransitionDurationInMillis()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 186
    iget-wide v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transitionTimeInMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 187
    iget-wide v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transitionTimeInMillis:J

    .line 192
    :goto_0
    return-wide v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    iget-wide v0, v0, Lcom/fusepowered/m1/android/HttpMMHeaders;->transitionTimeInMillis:J

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 192
    goto :goto_0
.end method

.method getUseCustomClose()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->useCustomClose:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/HttpMMHeaders;->useCustomClose:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasExpandUrl()Z
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasLoadedExpandUrl()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 170
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->hasLoadedExpandUrl:Z

    if-nez v0, :cond_0

    .line 172
    iput-boolean v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->hasLoadedExpandUrl:Z

    .line 173
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method isExpanded()Z
    .locals 4

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->isFromInterstitial:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->creatorAdImplId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFromInterstitial()Z
    .locals 4

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->isFromInterstitial:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/fusepowered/m1/android/OverlaySettings;->creatorAdImplId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log()V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/OverlaySettings;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method setIsTransparent(Z)V
    .locals 0
    .param p1, "transparent"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->isTransparent:Z

    .line 242
    return-void
.end method

.method setTransition(Ljava/lang/String;)V
    .locals 0
    .param p1, "trans"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transition:Ljava/lang/String;

    .line 222
    return-void
.end method

.method setTransitionDurationInMillis(J)V
    .locals 0
    .param p1, "transTimeMillis"    # J

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transitionTimeInMillis:J

    .line 197
    return-void
.end method

.method setUseCustomClose(Z)V
    .locals 0
    .param p1, "isUseCustomClose"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->useCustomClose:Z

    .line 232
    return-void
.end method

.method setWebMMHeaders(Lcom/fusepowered/m1/android/HttpMMHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/fusepowered/m1/android/HttpMMHeaders;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 104
    const-string v0, "height %d width %d modal %b urlToLoad %s creatorAdImplId %s shouldResizeOverlay: %d transitionTime: %d overlayTransition: %s shouldMakeOverlayTransparent: %b shouldShowCustomClose: %b Orientation: %s"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/fusepowered/m1/android/OverlaySettings;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/fusepowered/m1/android/OverlaySettings;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/fusepowered/m1/android/OverlaySettings;->modal:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/fusepowered/m1/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/fusepowered/m1/android/OverlaySettings;->creatorAdImplId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/fusepowered/m1/android/OverlaySettings;->shouldResizeOverlay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transitionTimeInMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transition:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/fusepowered/m1/android/OverlaySettings;->isTransparent:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/fusepowered/m1/android/OverlaySettings;->useCustomClose:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/fusepowered/m1/android/OverlaySettings;->orientation:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 121
    const/4 v1, 0x6

    new-array v0, v1, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->shouldLaunchToOverlay:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->isTransparent:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->useCustomClose:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->modal:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->isFromInterstitial:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/fusepowered/m1/android/OverlaySettings;->allowOrientationChange:Z

    aput-boolean v2, v0, v1

    .line 123
    .local v0, "booleanValues":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 124
    iget v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->shouldResizeOverlay:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transition:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-wide v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->transitionTimeInMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-object v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->orientation:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-wide v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->creatorAdImplId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    iget-object v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->height:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->width:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->content:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->adUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/fusepowered/m1/android/OverlaySettings;->mmHeaders:Lcom/fusepowered/m1/android/HttpMMHeaders;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 135
    return-void
.end method
