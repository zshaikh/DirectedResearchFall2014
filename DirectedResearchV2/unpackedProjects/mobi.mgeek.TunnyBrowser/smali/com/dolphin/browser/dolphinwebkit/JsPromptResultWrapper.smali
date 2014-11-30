.class Lcom/dolphin/browser/dolphinwebkit/JsPromptResultWrapper;
.super Ljava/lang/Object;
.source "JsPromptResultWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IJsPromptResult;


# instance fields
.field private final mResult:Ldolphin/webkit/JsPromptResult;


# direct methods
.method public constructor <init>(Ldolphin/webkit/JsPromptResult;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/JsPromptResultWrapper;->mResult:Ldolphin/webkit/JsPromptResult;

    .line 32
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/JsPromptResultWrapper;->mResult:Ldolphin/webkit/JsPromptResult;

    invoke-virtual {v0}, Ldolphin/webkit/JsPromptResult;->cancel()V

    .line 37
    return-void
.end method

.method public confirm()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/JsPromptResultWrapper;->mResult:Ldolphin/webkit/JsPromptResult;

    invoke-virtual {v0}, Ldolphin/webkit/JsPromptResult;->confirm()V

    .line 42
    return-void
.end method

.method public confirm(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/JsPromptResultWrapper;->mResult:Ldolphin/webkit/JsPromptResult;

    invoke-virtual {v0, p1}, Ldolphin/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/JsPromptResultWrapper;->mResult:Ldolphin/webkit/JsPromptResult;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/JsPromptResultWrapper;->mResult:Ldolphin/webkit/JsPromptResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/JsPromptResultWrapper;->mResult:Ldolphin/webkit/JsPromptResult;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
