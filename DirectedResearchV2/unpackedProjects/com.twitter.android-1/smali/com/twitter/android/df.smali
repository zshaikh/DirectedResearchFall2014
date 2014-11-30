.class final Lcom/twitter/android/df;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/SULFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/SULFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/df;->a:Lcom/twitter/android/SULFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/df;->a:Lcom/twitter/android/SULFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SULFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/df;->a:Lcom/twitter/android/SULFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/SULFragment;->c(I)V

    :cond_0
    return-void
.end method
