.class final Lcom/twitter/android/by;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/MessagesActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/MessagesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/by;->a:Lcom/twitter/android/MessagesActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/MessagesActivity;Lcom/twitter/android/ag;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/by;-><init>(Lcom/twitter/android/MessagesActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/by;->a:Lcom/twitter/android/MessagesActivity;

    invoke-virtual {v0}, Lcom/twitter/android/MessagesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/MessagesFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/android/client/Session;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/MessagesFragment;->a(J)V

    invoke-virtual {v0}, Lcom/twitter/android/MessagesFragment;->c_()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/MessagesFragment;->a(Z)V

    :cond_0
    return-void
.end method
