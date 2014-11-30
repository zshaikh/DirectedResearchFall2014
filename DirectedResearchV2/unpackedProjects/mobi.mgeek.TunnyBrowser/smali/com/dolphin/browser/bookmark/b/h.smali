.class public Lcom/dolphin/browser/bookmark/b/h;
.super Lcom/dolphin/browser/bookmark/b/i;
.source "DeviceFolderItemView.java"


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/b/i;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/b/h;->j:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/h;->j:Ljava/lang/String;

    return-object v0
.end method
