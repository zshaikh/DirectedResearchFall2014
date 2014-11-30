.class Lcom/dolphin/browser/bookmark/ax;
.super Ljava/lang/Object;
.source "BookmarkHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Lcom/dolphin/browser/bookmark/b/d;

.field final synthetic d:Lcom/dolphin/browser/bookmark/at;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/at;Ljava/util/List;JLcom/dolphin/browser/bookmark/b/d;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/ax;->d:Lcom/dolphin/browser/bookmark/at;

    iput-object p2, p0, Lcom/dolphin/browser/bookmark/ax;->a:Ljava/util/List;

    iput-wide p3, p0, Lcom/dolphin/browser/bookmark/ax;->b:J

    iput-object p5, p0, Lcom/dolphin/browser/bookmark/ax;->c:Lcom/dolphin/browser/bookmark/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 305
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ax;->d:Lcom/dolphin/browser/bookmark/at;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/ax;->a:Ljava/util/List;

    iget-wide v2, p0, Lcom/dolphin/browser/bookmark/ax;->b:J

    iget-object v4, p0, Lcom/dolphin/browser/bookmark/ax;->c:Lcom/dolphin/browser/bookmark/b/d;

    invoke-virtual {v4}, Lcom/dolphin/browser/bookmark/b/d;->a()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/bookmark/at;->a(Lcom/dolphin/browser/bookmark/at;Ljava/util/List;JJ)V

    .line 307
    return-void
.end method
