.class Lcom/dolphin/browser/tablist/r;
.super Ljava/lang/Object;
.source "CloudTabListView.java"

# interfaces
.implements Lcom/dolphin/browser/sync/d;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/j;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/dolphin/browser/tablist/r;->a:Lcom/dolphin/browser/tablist/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 368
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    :cond_0
    return-void
.end method
