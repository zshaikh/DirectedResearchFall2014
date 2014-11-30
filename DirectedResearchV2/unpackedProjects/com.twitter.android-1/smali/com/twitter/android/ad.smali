.class final Lcom/twitter/android/ad;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/UserQueryActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/UserQueryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/UserQueryActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/UserQueryActivity;Lcom/twitter/android/cv;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/ad;-><init>(Lcom/twitter/android/UserQueryActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/c;)V
    .locals 3

    const v1, 0x7f0b004c

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/UserQueryActivity;

    invoke-virtual {v2, p2}, Lcom/twitter/android/UserQueryActivity;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/UserQueryActivity;

    iput-boolean v0, v2, Lcom/twitter/android/UserQueryActivity;->c:Z

    if-eqz p5, :cond_3

    const/16 v2, 0xc8

    if-ne p3, v2, :cond_1

    iget-object v1, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/UserQueryActivity;

    invoke-virtual {v1, p5}, Lcom/twitter/android/UserQueryActivity;->a(Lcom/twitter/android/api/c;)V

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/UserQueryActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twitter/android/ad;->a:Lcom/twitter/android/UserQueryActivity;

    invoke-virtual {v0}, Lcom/twitter/android/UserQueryActivity;->finish()V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x193

    if-ne p3, v0, :cond_2

    iget-boolean v0, p5, Lcom/twitter/android/api/c;->h:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0b00bd

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v0, 0x194

    if-ne p3, v0, :cond_4

    const v0, 0x7f0b00fb

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
