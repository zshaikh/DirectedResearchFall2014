.class Landroid/view/e;
.super Ljava/lang/Object;
.source "CustomMenuListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/CustomMenuListActivity;


# direct methods
.method constructor <init>(Landroid/view/CustomMenuListActivity;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Landroid/view/e;->a:Landroid/view/CustomMenuListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Landroid/view/e;->a:Landroid/view/CustomMenuListActivity;

    iget-object v0, v0, Landroid/view/CustomMenuListActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/view/e;->a:Landroid/view/CustomMenuListActivity;

    iget-object v1, v1, Landroid/view/CustomMenuListActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 195
    return-void
.end method
