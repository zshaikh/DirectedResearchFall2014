.class public Ldolphin/webkit/JsPromptResult;
.super Ldolphin/webkit/JsResult;
.source "JsPromptResult.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# instance fields
.field private mStringResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldolphin/webkit/eo;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ldolphin/webkit/JsResult;-><init>(Ldolphin/webkit/eo;)V

    .line 51
    return-void
.end method


# virtual methods
.method public confirm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Ldolphin/webkit/JsPromptResult;->mStringResult:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Ldolphin/webkit/JsPromptResult;->confirm()V

    .line 44
    return-void
.end method

.method public getStringResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ldolphin/webkit/JsPromptResult;->mStringResult:Ljava/lang/String;

    return-object v0
.end method
