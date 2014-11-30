.class final Lcom/twitter/android/go;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/LinearLayout;

.field public c:Ljava/lang/String;

.field private synthetic d:Lcom/twitter/android/SULFragment;


# direct methods
.method public constructor <init>(Lcom/twitter/android/SULFragment;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/twitter/android/go;->d:Lcom/twitter/android/SULFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0700a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/go;->a:Landroid/widget/TextView;

    const v0, 0x7f07001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/twitter/android/go;->b:Landroid/widget/LinearLayout;

    return-void
.end method
