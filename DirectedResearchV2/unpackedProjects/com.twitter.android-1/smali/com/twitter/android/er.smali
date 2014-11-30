.class final Lcom/twitter/android/er;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/EditProfileActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/EditProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/EditProfileActivity;Lcom/twitter/android/eo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/er;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/c;)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/EditProfileActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v0, v0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0, p5}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/api/c;)V

    iget-object v0, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v0, v0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/e;

    iget-wide v1, p5, Lcom/twitter/android/api/c;->a:J

    iget-object v3, p5, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->g(JLjava/lang/String;)Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public final c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/c;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/EditProfileActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/EditProfileActivity;->dismissDialog(I)V

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    invoke-virtual {p1, p5}, Lcom/twitter/android/client/Session;->a(Lcom/twitter/android/api/c;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v2, v2, Lcom/twitter/android/EditProfileActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bio"

    iget-object v2, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v2, v2, Lcom/twitter/android/EditProfileActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "web"

    iget-object v2, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v2, v2, Lcom/twitter/android/EditProfileActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "loc"

    iget-object v2, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v2, v2, Lcom/twitter/android/EditProfileActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/EditProfileActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/EditProfileActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-virtual {v0}, Lcom/twitter/android/EditProfileActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/er;->a:Lcom/twitter/android/EditProfileActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/EditProfileActivity;->showDialog(I)V

    goto :goto_0
.end method
