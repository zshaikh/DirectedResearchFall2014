.class final Lcom/twitter/android/fu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/HomeTabActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/HomeTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/fu;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/fu;->a:Lcom/twitter/android/HomeTabActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/fu;->a:Lcom/twitter/android/HomeTabActivity;

    const-class v3, Lcom/twitter/android/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
