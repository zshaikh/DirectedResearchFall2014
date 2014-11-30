.class public Lcom/dolphin/browser/core/ConsoleMessage;
.super Ljava/lang/Object;
.source "ConsoleMessage.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# instance fields
.field private a:Lcom/dolphin/browser/core/d;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/dolphin/browser/core/ConsoleMessage;->b:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/dolphin/browser/core/ConsoleMessage;->c:Ljava/lang/String;

    .line 43
    iput p3, p0, Lcom/dolphin/browser/core/ConsoleMessage;->d:I

    .line 44
    sget-object v0, Lcom/dolphin/browser/core/d;->b:Lcom/dolphin/browser/core/d;

    iput-object v0, p0, Lcom/dolphin/browser/core/ConsoleMessage;->a:Lcom/dolphin/browser/core/d;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/core/d;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/dolphin/browser/core/ConsoleMessage;->b:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/dolphin/browser/core/ConsoleMessage;->c:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcom/dolphin/browser/core/ConsoleMessage;->d:I

    .line 51
    iput-object p4, p0, Lcom/dolphin/browser/core/ConsoleMessage;->a:Lcom/dolphin/browser/core/d;

    .line 52
    return-void
.end method


# virtual methods
.method public lineNumber()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/dolphin/browser/core/ConsoleMessage;->d:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/core/ConsoleMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public messageLevel()Lcom/dolphin/browser/core/d;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/core/ConsoleMessage;->a:Lcom/dolphin/browser/core/d;

    return-object v0
.end method

.method public sourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/core/ConsoleMessage;->c:Ljava/lang/String;

    return-object v0
.end method
