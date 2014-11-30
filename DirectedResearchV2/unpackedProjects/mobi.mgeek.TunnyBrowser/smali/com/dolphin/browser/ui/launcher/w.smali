.class public Lcom/dolphin/browser/ui/launcher/w;
.super Ljava/lang/Object;
.source "MyShortcutIcon.java"


# instance fields
.field a:I

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const v0, 0x7fffffff

    iput v0, p0, Lcom/dolphin/browser/ui/launcher/w;->a:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/launcher/w;->b:Z

    return-void
.end method
