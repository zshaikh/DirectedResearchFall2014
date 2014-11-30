.class public final Ldolphin/webkit/Transcoder;
.super Ljava/lang/Object;
.source "Transcoder.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static sInstance:Ldolphin/webkit/Transcoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ldolphin/webkit/Transcoder;

    invoke-direct {v0}, Ldolphin/webkit/Transcoder;-><init>()V

    sput-object v0, Ldolphin/webkit/Transcoder;->sInstance:Ldolphin/webkit/Transcoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getInstance()Ldolphin/webkit/Transcoder;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Ldolphin/webkit/Transcoder;->sInstance:Ldolphin/webkit/Transcoder;

    return-object v0
.end method

.method private static native nativeSetParameter(ILjava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method


# virtual methods
.method public final setParameter(ILjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 22
    invoke-static {p1, p2}, Ldolphin/webkit/Transcoder;->nativeSetParameter(ILjava/lang/String;)V

    .line 23
    return-void
.end method

.method public final updateTranscodeConfig(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldolphin/webkit/TranscodeConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p1}, Ldolphin/webkit/JniUtil;->updateTranscodeConfig(Ljava/util/List;)V

    .line 30
    return-void
.end method
