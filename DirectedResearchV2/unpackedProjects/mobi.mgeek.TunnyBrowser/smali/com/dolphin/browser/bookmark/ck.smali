.class Lcom/dolphin/browser/bookmark/ck;
.super Ljava/lang/Object;
.source "ImportBookmarksActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/ck;->a:Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/ck;->a:Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;->b(Lcom/dolphin/browser/bookmark/ImportBookmarksActivity;)V

    .line 121
    return-void
.end method
