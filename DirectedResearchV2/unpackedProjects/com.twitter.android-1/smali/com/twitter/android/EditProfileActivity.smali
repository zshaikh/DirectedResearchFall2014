.class public Lcom/twitter/android/EditProfileActivity;
.super Lcom/twitter/android/BaseActivity;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/twitter/android/util/j;
.implements Lcom/twitter/android/widget/m;


# static fields
.field static final d:Z

.field private static final j:[Ljava/lang/String;


# instance fields
.field e:Landroid/net/Uri;

.field f:Landroid/widget/EditText;

.field g:Landroid/widget/EditText;

.field h:Landroid/widget/EditText;

.field i:Landroid/widget/EditText;

.field private k:Landroid/widget/ImageView;

.field private l:Z

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const-string v0, "EditProfile"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/EditProfileActivity;->d:Z

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "description"

    aput-object v2, v0, v1

    const-string v1, "web_url"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "username"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/EditProfileActivity;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/BaseActivity;-><init>(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0b00d3

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->a(I)V

    iput-wide p5, p0, Lcom/twitter/android/EditProfileActivity;->m:J

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/e;

    iget-wide v1, p0, Lcom/twitter/android/EditProfileActivity;->m:J

    invoke-virtual {v0, v1, v2, p7}, Lcom/twitter/android/client/e;->g(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->k:Landroid/widget/ImageView;

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V
    .locals 2

    iget-wide v0, p0, Lcom/twitter/android/EditProfileActivity;->m:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/util/n;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->l:Z

    return-void
.end method

.method final b()V
    .locals 5

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Ll;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f0b0143

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/twitter/android/EditProfileActivity;->showDialog(I)V

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/EditProfileActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/EditProfileActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/EditProfileActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const v2, 0xaf000

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    :goto_1
    if-ge v0, v2, :cond_1

    iput-object v3, p0, Lcom/twitter/android/EditProfileActivity;->e:Landroid/net/Uri;

    new-instance v0, Lcom/twitter/android/bn;

    invoke-direct {v0, p0}, Lcom/twitter/android/bn;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    new-array v1, v7, [Landroid/net/Uri;

    aput-object v3, v1, v8

    invoke-virtual {v0, v1}, Lcom/twitter/android/bn;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "EditProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/twitter/android/util/q;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    const v0, 0x7f0b00dd

    new-array v1, v7, [Ljava/lang/Object;

    const/16 v2, 0x2bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/EditProfileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const v0, 0x7f0b0033

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/EditProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->finish()V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f070046 -> :sswitch_2
        0x7f07004e -> :sswitch_0
        0x7f070053 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const v0, 0x7f030016

    invoke-super {p0, p1, v0}, Lcom/twitter/android/BaseActivity;->a(Landroid/os/Bundle;I)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v2, 0x7f07004f

    invoke-virtual {p0, v2}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/twitter/android/EditProfileActivity;->f:Landroid/widget/EditText;

    const v2, 0x7f070050

    invoke-virtual {p0, v2}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/twitter/android/EditProfileActivity;->g:Landroid/widget/EditText;

    const v2, 0x7f070051

    invoke-virtual {p0, v2}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/twitter/android/EditProfileActivity;->h:Landroid/widget/EditText;

    const v2, 0x7f070052

    invoke-virtual {p0, v2}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/twitter/android/EditProfileActivity;->i:Landroid/widget/EditText;

    const v2, 0x7f07004d

    invoke-virtual {p0, v2}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/twitter/android/EditProfileActivity;->k:Landroid/widget/ImageView;

    const-string v2, "user"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "user"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/c;

    iget-object v1, v0, Lcom/twitter/android/api/c;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/twitter/android/api/c;->d:Ljava/lang/String;

    iget-object v3, v0, Lcom/twitter/android/api/c;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/twitter/android/api/c;->j:Ljava/lang/String;

    iget-wide v5, v0, Lcom/twitter/android/api/c;->a:J

    iget-object v7, v0, Lcom/twitter/android/api/c;->c:Ljava/lang/String;

    iget-object v8, v0, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/EditProfileActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    new-instance v0, Lcom/twitter/android/er;

    invoke-direct {v0, p0, v10}, Lcom/twitter/android/er;-><init>(Lcom/twitter/android/EditProfileActivity;Lcom/twitter/android/eo;)V

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->b:Lcom/twitter/android/client/f;

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0, v11, p0}, Lcom/twitter/android/client/e;->a(ILcom/twitter/android/util/j;)V

    if-eqz p1, :cond_2

    const-string v0, "photo_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->e:Landroid/net/Uri;

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "vnd.android.cursor.item/vnd.twitter.android.users"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/twitter/android/EditProfileActivity;->j:[Ljava/lang/String;

    move-object v3, v10

    move-object v4, v10

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v0, 0x5

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x6

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/EditProfileActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent data must be Twitter User content:// URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v3, 0x0

    const v7, 0x7f0b00b7

    const v6, 0x7f0b00b3

    const v5, 0x1080027

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/twitter/android/eo;

    invoke-direct {v0, p0}, Lcom/twitter/android/eo;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    new-instance v1, Lcom/twitter/android/en;

    invoke-direct {v1, p0}, Lcom/twitter/android/en;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    new-instance v2, Lcom/twitter/android/em;

    invoke-direct {v2, p0}, Lcom/twitter/android/em;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0031

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0034

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v3, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/twitter/android/el;

    invoke-direct {v0, p0}, Lcom/twitter/android/el;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00d3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0035

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/android/client/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/twitter/android/client/e;->b(ILcom/twitter/android/util/j;)V

    invoke-super {p0}, Lcom/twitter/android/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->e:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-string v0, "photo_uri"

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->e:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
