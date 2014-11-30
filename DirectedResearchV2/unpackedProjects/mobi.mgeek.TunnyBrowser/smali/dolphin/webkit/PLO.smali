.class public final Ldolphin/webkit/PLO;
.super Ljava/lang/Object;
.source "PLO.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Ldolphin/webkit/PLO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Ldolphin/webkit/PLO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/PLO;->LOG_TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ldolphin/webkit/PLO;

    invoke-direct {v0}, Ldolphin/webkit/PLO;-><init>()V

    sput-object v0, Ldolphin/webkit/PLO;->sInstance:Ldolphin/webkit/PLO;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static getInstance()Ldolphin/webkit/PLO;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Ldolphin/webkit/PLO;->sInstance:Ldolphin/webkit/PLO;

    return-object v0
.end method


# virtual methods
.method public final updatePloData()V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Ldolphin/webkit/PLO;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[PLO::updatePloData]"

    invoke-static {v0, v1}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Ldolphin/webkit/JniUtil;->updatePloData()V

    .line 45
    return-void
.end method
