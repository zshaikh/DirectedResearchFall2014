.class final Lcom/twitter/android/ey;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/PostActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/PostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ey;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/twitter/android/ey;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0, v1}, Lcom/twitter/android/PostActivity;->a(Z)V

    iget-object v0, p0, Lcom/twitter/android/ey;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0}, Lcom/twitter/android/PostActivity;->b()V

    iget-object v0, p0, Lcom/twitter/android/ey;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->b(Z)Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/ey;->a:Lcom/twitter/android/PostActivity;

    iput-boolean v1, v0, Lcom/twitter/android/PostActivity;->d:Z

    return-void
.end method
