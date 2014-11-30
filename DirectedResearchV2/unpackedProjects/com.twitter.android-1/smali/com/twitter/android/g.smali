.class final Lcom/twitter/android/g;
.super Lcom/twitter/android/fa;


# instance fields
.field private b:Lcom/twitter/android/eu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/dh;)V
    .locals 5

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/twitter/android/fa;-><init>(Landroid/widget/ListAdapter;I)V

    new-instance v0, Lcom/twitter/android/eu;

    const v1, 0x7f0b0161

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/StoriesActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/eu;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/twitter/android/g;->b:Lcom/twitter/android/eu;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/g;->b:Lcom/twitter/android/eu;

    iget-object v0, v0, Lcom/twitter/android/eu;->c:Landroid/content/Intent;

    return-object v0
.end method

.method protected final b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/g;->b:Lcom/twitter/android/eu;

    invoke-static {p1, p2, v0}, Lcom/twitter/android/ge;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/twitter/android/eu;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
