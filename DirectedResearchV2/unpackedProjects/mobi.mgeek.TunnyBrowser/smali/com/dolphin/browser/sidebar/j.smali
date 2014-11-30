.class Lcom/dolphin/browser/sidebar/j;
.super Ljava/lang/Object;
.source "BookmarkView.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sidebar/i;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sidebar/i;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/j;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 117
    invoke-static {}, Lcom/dolphin/browser/bookmark/bq;->a()Lcom/dolphin/browser/bookmark/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bq;->c()J

    move-result-wide v0

    .line 119
    iget-object v2, p0, Lcom/dolphin/browser/sidebar/j;->a:Lcom/dolphin/browser/sidebar/i;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;JZ)V

    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/j;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v0}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;)Lcom/dolphin/browser/bookmark/j;

    move-result-object v0

    instance-of v0, v0, Lcom/dolphin/browser/bookmark/bo;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/j;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v0}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;)Lcom/dolphin/browser/bookmark/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->p()V

    .line 124
    :cond_0
    return-void
.end method
