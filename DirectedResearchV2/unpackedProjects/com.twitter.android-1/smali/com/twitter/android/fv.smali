.class final Lcom/twitter/android/fv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/AccountSettingsActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/AccountSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/fv;->a:Lcom/twitter/android/AccountSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/fv;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/fv;->a:Lcom/twitter/android/AccountSettingsActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/twitter/android/AccountSettingsActivity;->b:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/twitter/android/fv;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v1, v1, Lcom/twitter/android/AccountSettingsActivity;->c:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/fv;->a:Lcom/twitter/android/AccountSettingsActivity;

    iget-object v2, v2, Lcom/twitter/android/AccountSettingsActivity;->c:Lcom/twitter/android/client/e;

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/e;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/Session;)Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/fv;->a:Lcom/twitter/android/AccountSettingsActivity;

    invoke-static {v1, v0}, Lcom/twitter/android/platform/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/fv;->a:Lcom/twitter/android/AccountSettingsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/AccountSettingsActivity;->showDialog(I)V

    return-void
.end method
