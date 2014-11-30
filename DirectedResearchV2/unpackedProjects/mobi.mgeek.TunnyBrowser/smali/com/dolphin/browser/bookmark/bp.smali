.class Lcom/dolphin/browser/bookmark/bp;
.super Ljava/lang/Object;
.source "BookmarkRootAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[I

.field final synthetic b:I

.field final synthetic c:Lcom/dolphin/browser/bookmark/bo;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/bo;[II)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/bp;->c:Lcom/dolphin/browser/bookmark/bo;

    iput-object p2, p0, Lcom/dolphin/browser/bookmark/bp;->a:[I

    iput p3, p0, Lcom/dolphin/browser/bookmark/bp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bp;->c:Lcom/dolphin/browser/bookmark/bo;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/bp;->a:[I

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/bo;->a(Lcom/dolphin/browser/bookmark/bo;[I)[I

    .line 198
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bp;->c:Lcom/dolphin/browser/bookmark/bo;

    iget v1, p0, Lcom/dolphin/browser/bookmark/bp;->b:I

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmark/bo;->a(Lcom/dolphin/browser/bookmark/bo;I)I

    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bp;->c:Lcom/dolphin/browser/bookmark/bo;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/bo;->notifyDataSetChanged()V

    .line 200
    return-void
.end method
