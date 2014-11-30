.class public Lcom/twitter/android/MessagesThreadActivity;
.super Lcom/twitter/android/BaseListActivity;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/twitter/android/widget/o;


# static fields
.field private static final h:Ljava/text/SimpleDateFormat;

.field private static final i:[Ljava/lang/String;


# instance fields
.field e:Landroid/widget/EditText;

.field f:Landroid/widget/Button;

.field g:Ljava/lang/String;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ProgressBar;

.field private l:I

.field private m:Landroid/widget/AutoCompleteTextView;

.field private n:Lcom/twitter/android/ev;

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    sput-object v0, Lcom/twitter/android/MessagesThreadActivity;->h:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "msg_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sender_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "s_profile_image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "entities"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/MessagesThreadActivity;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseListActivity;-><init>()V

    return-void
.end method

.method static synthetic f()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/twitter/android/MessagesThreadActivity;->h:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private h()Z
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    iget v1, p0, Lcom/twitter/android/MessagesThreadActivity;->l:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->m:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-lez v0, :cond_1

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/twitter/android/api/TweetEntities$Url;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/twitter/android/BaseActivity;->a(Landroid/content/Context;Lcom/twitter/android/api/TweetEntities$Url;J)V

    return-void
.end method

.method public final a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->n:Lcom/twitter/android/ev;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->n:Lcom/twitter/android/ev;

    invoke-virtual {v0}, Lcom/twitter/android/ev;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListActivity;->a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a_(J)V
    .locals 0

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    sget-object v0, Ll;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/MessagesThreadActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/client/e;->c(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/twitter/android/MessagesThreadActivity;->l:I

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->j:Landroid/widget/TextView;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    add-int/2addr v0, v2

    rsub-int v0, v0, 0x8c

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/twitter/android/MessagesThreadActivity;->d()V

    return-void
.end method

.method public final b(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListActivity;->b(I)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/twitter/android/MessagesThreadActivity;->e()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f07004a
        :pswitch_0
    .end packed-switch
.end method

.method final b(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final c(J)V
    .locals 0

    return-void
.end method

.method final d()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->f:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/twitter/android/MessagesThreadActivity;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method final e()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->b(Z)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->a:Lcom/twitter/android/client/e;

    iget-wide v2, p0, Lcom/twitter/android/MessagesThreadActivity;->o:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/android/client/e;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->a:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/MessagesThreadActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/client/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/BaseListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "username"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->m:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onClickHandler(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/UsersActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Lcom/twitter/android/MessagesThreadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f070067
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const v0, 0x7f03002c

    invoke-super {p0, p1, v0, v8, v9}, Lcom/twitter/android/BaseListActivity;->a(Landroid/os/Bundle;IZZ)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->d:Lcom/twitter/android/widget/Navbar;

    const v0, 0x7f070068

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f07004a

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->f:Landroid/widget/Button;

    const v2, 0x7f0b00a3

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    const v0, 0x7f070065

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->k:Landroid/widget/ProgressBar;

    const v0, 0x7f070064

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->j:Landroid/widget/TextView;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/twitter/android/MessagesThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/MessagesThreadActivity;->o:J

    const-string v1, "user_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->g:Ljava/lang/String;

    const-string v1, "owner_id"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/twitter/android/MessagesThreadActivity;->o:J

    cmp-long v0, v3, v6

    if-nez v0, :cond_2

    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    new-instance v3, Lcom/twitter/android/al;

    invoke-direct {v3, p0}, Lcom/twitter/android/al;-><init>(Lcom/twitter/android/MessagesThreadActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/ev;

    sget-object v3, Lcom/twitter/android/provider/ak;->h:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "ownerId"

    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/android/MessagesThreadActivity;->a:Lcom/twitter/android/client/e;

    invoke-direct {v2, p0, v1, v3}, Lcom/twitter/android/ev;-><init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/twitter/android/client/e;)V

    iput-object v2, p0, Lcom/twitter/android/MessagesThreadActivity;->n:Lcom/twitter/android/ev;

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->n:Lcom/twitter/android/ev;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->m:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f0b00ce

    invoke-virtual {p0, v1}, Lcom/twitter/android/MessagesThreadActivity;->a(I)V

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_1
    sget-object v0, Lcom/twitter/android/MessagesThreadActivity;->h:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/twitter/android/MessagesThreadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b017c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    new-instance v0, Lcom/twitter/android/bi;

    invoke-direct {v0, p0, v5}, Lcom/twitter/android/bi;-><init>(Lcom/twitter/android/MessagesThreadActivity;Lcom/twitter/android/al;)V

    iput-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->b:Lcom/twitter/android/client/f;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    goto :goto_1

    :cond_2
    iget-wide v3, p0, Lcom/twitter/android/MessagesThreadActivity;->o:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/provider/o;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/twitter/android/MessagesThreadActivity;->a:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/twitter/android/provider/aa;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/MessagesThreadActivity;->i:[Ljava/lang/String;

    const-string v3, "thread=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object v0, v4, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/MessagesThreadActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/MessagesThreadActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v1, Lcom/twitter/android/be;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/be;-><init>(Lcom/twitter/android/MessagesThreadActivity;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/twitter/android/MessagesThreadActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {p0, v1}, Lcom/twitter/android/MessagesThreadActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const v6, 0x7f0b00b5

    const v5, 0x7f0b00b4

    const v4, 0x1080027

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/twitter/android/am;

    invoke-direct {v0, p0}, Lcom/twitter/android/am;-><init>(Lcom/twitter/android/MessagesThreadActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00a1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00a5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00b7

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00b3

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/twitter/android/an;

    invoke-direct {v0, p0}, Lcom/twitter/android/an;-><init>(Lcom/twitter/android/MessagesThreadActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0122

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0123

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/twitter/android/ap;

    invoke-direct {v0, p0}, Lcom/twitter/android/ap;-><init>(Lcom/twitter/android/MessagesThreadActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b012c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b012d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/MessagesThreadActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100004

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/MessagesThreadActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/MessagesThreadActivity;->e()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->showDialog(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesThreadActivity;->showDialog(I)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0700df
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0700df

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/MessagesThreadActivity;->c:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
