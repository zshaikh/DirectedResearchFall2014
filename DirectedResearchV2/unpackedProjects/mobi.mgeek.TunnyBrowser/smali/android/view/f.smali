.class Landroid/view/f;
.super Ljava/lang/Object;
.source "CustomMenuListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/view/CustomMenuListActivity;


# direct methods
.method constructor <init>(Landroid/view/CustomMenuListActivity;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Landroid/view/f;->a:Landroid/view/CustomMenuListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 326
    iget-object v0, p0, Landroid/view/f;->a:Landroid/view/CustomMenuListActivity;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/CustomMenuListActivity;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 327
    return-void
.end method
