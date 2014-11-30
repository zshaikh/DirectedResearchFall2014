.class Lcom/dolphin/browser/provider/z;
.super Ljava/lang/Object;
.source "SpeedDialManager.java"

# interfaces
.implements Lcom/dolphin/browser/core/aa;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/provider/y;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/provider/y;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/dolphin/browser/provider/z;->a:Lcom/dolphin/browser/provider/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
