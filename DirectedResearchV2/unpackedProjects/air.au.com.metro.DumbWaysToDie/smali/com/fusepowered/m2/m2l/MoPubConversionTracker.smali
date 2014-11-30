.class public Lcom/fusepowered/m2/m2l/MoPubConversionTracker;
.super Ljava/lang/Object;
.source "MoPubConversionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/MoPubConversionTracker$ConversionUrlGenerator;,
        Lcom/fusepowered/m2/m2l/MoPubConversionTracker$TrackOpen;
    }
.end annotation


# static fields
.field private static final PREFERENCE_NAME:Ljava/lang/String; = "mopubSettings"

.field private static final TRACK_HANDLER:Ljava/lang/String; = "/m/open"

.field private static final TRACK_HOST:Ljava/lang/String; = "ads.mopub.com"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsTrackedKey:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mIsTrackedKey:Ljava/lang/String;

    return-object v0
.end method

.method private isAlreadyTracked()Z
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mIsTrackedKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public reportAppOpen(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mPackageName:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " tracked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mIsTrackedKey:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mContext:Landroid/content/Context;

    const-string v1, "mopubSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 67
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker;->isAlreadyTracked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$TrackOpen;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fusepowered/m2/m2l/MoPubConversionTracker$TrackOpen;-><init>(Lcom/fusepowered/m2/m2l/MoPubConversionTracker;Lcom/fusepowered/m2/m2l/MoPubConversionTracker$TrackOpen;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "MoPub"

    const-string v1, "Conversion already tracked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method