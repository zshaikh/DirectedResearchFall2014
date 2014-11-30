.class public Lcom/dolphin/browser/voice/command/b;
.super Lcom/dolphin/browser/voice/command/i;
.source "ErrorAction.java"


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0, v0}, Lcom/dolphin/browser/voice/command/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput p1, p0, Lcom/dolphin/browser/voice/command/b;->b:I

    .line 20
    return-void
.end method


# virtual methods
.method public o_()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/dolphin/browser/voice/command/b;->b:I

    return v0
.end method
