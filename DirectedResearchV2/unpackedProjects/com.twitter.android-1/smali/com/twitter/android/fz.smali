.class final Lcom/twitter/android/fz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/DraftsActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/DraftsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/fz;->a:Lcom/twitter/android/DraftsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/fz;->a:Lcom/twitter/android/DraftsActivity;

    iget-object v0, v0, Lcom/twitter/android/DraftsActivity;->e:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/fz;->a:Lcom/twitter/android/DraftsActivity;

    iget-object v1, v1, Lcom/twitter/android/DraftsActivity;->a:Lcom/twitter/android/client/Session;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->c(Lcom/twitter/android/client/Session;)V

    iget-object v0, p0, Lcom/twitter/android/fz;->a:Lcom/twitter/android/DraftsActivity;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/DraftsActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/fz;->a:Lcom/twitter/android/DraftsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/DraftsActivity;->finish()V

    return-void
.end method
