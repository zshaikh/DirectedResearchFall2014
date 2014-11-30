.class Lcom/dolphin/browser/search/ui/p;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Lcom/dolphin/browser/search/suggestions/x;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/p;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1172
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1173
    invoke-static {}, Lcom/dolphin/browser/bookmark/bq;->a()Lcom/dolphin/browser/bookmark/bq;

    move-result-object v0

    .line 1174
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bq;->c()J

    move-result-wide v1

    .line 1175
    invoke-static {v1, v2}, Lcom/dolphin/browser/bookmark/q;->c(J)Z

    move-result v3

    if-nez v3, :cond_0

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return-void

    .line 1180
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/p;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->f(Lcom/dolphin/browser/search/ui/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/dolphin/browser/bookmark/bq;->a(Landroid/content/Context;J)V

    .line 1181
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/p;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->C(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/suggestions/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/suggestions/z;->c()V

    goto :goto_0
.end method
