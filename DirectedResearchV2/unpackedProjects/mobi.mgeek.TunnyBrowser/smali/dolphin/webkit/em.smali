.class final Ldolphin/webkit/em;
.super Ljava/lang/Thread;
.source "JniUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 541
    # invokes: Ldolphin/webkit/JniUtil;->prepareTranscodeData()V
    invoke-static {}, Ldolphin/webkit/JniUtil;->access$000()V

    .line 542
    return-void
.end method
