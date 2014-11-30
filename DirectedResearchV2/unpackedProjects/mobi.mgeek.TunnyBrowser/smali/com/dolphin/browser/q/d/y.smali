.class public Lcom/dolphin/browser/q/d/y;
.super Ljava/lang/Throwable;
.source "TwitterError.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/q/d/y;->a:I

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/q/d/y;->a:I

    .line 16
    iput-object p2, p0, Lcom/dolphin/browser/q/d/y;->b:Ljava/lang/String;

    .line 17
    iput p3, p0, Lcom/dolphin/browser/q/d/y;->a:I

    .line 18
    return-void
.end method
