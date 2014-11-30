.class public Ldolphin/webkit/JsResult;
.super Ljava/lang/Object;
.source "JsResult.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# instance fields
.field private final mReceiver:Ldolphin/webkit/eo;

.field private mResult:Z


# direct methods
.method public constructor <init>(Ldolphin/webkit/eo;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Ldolphin/webkit/JsResult;->mReceiver:Ldolphin/webkit/eo;

    .line 64
    return-void
.end method

.method private final wakeUp()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Ldolphin/webkit/JsResult;->mReceiver:Ldolphin/webkit/eo;

    invoke-interface {v0, p0}, Ldolphin/webkit/eo;->a(Ldolphin/webkit/JsResult;)V

    .line 76
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/JsResult;->mResult:Z

    .line 48
    invoke-direct {p0}, Ldolphin/webkit/JsResult;->wakeUp()V

    .line 49
    return-void
.end method

.method public final confirm()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/JsResult;->mResult:Z

    .line 56
    invoke-direct {p0}, Ldolphin/webkit/JsResult;->wakeUp()V

    .line 57
    return-void
.end method

.method public final getResult()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Ldolphin/webkit/JsResult;->mResult:Z

    return v0
.end method
