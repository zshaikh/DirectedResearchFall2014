.class final Lcom/twitter/android/eo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/EditProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Lcom/twitter/android/bn;

    iget-object v1, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-direct {v0, v1}, Lcom/twitter/android/bn;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/eo;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v3, v3, Lcom/twitter/android/EditProfileActivity;->e:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/bn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
