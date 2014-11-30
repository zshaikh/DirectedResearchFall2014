.class public Lam/sunrise/android/calendar/ui/event/a/a;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "RSVPDialog.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/ImageView;

.field private e:Lam/sunrise/android/calendar/ui/event/d;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:[Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/facebook/Session$StatusCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    .line 302
    new-instance v0, Lam/sunrise/android/calendar/ui/event/a/g;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/a/g;-><init>(Lam/sunrise/android/calendar/ui/event/a/a;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->m:Lcom/facebook/Session$StatusCallback;

    .line 145
    const/4 v0, 0x1

    const v1, 0x7f100042

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/a/a;->setStyle(II)V

    .line 146
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/a/a;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->c()V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/a/a;Lam/sunrise/android/calendar/ui/event/a/i;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/a/a;->a(Lam/sunrise/android/calendar/ui/event/a/i;)V

    return-void
.end method

.method private a(Lam/sunrise/android/calendar/ui/event/a/i;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 371
    move v0, v1

    :goto_0
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/a/a;->j:[Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 372
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/event/a/i;->a()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 373
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/a/a;->j:[Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;->setChecked(Z)V

    .line 374
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/a/a;->j:[Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;

    aget-object v3, v3, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v4

    sget-object v5, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v4, v5}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 371
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_0
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/a/a;->j:[Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;->setChecked(Z)V

    .line 377
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/a/a;->j:[Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;

    aget-object v3, v3, v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v4

    sget-object v5, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v4, v5}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 380
    :cond_1
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/event/a/i;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->h:Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/a/a;->h:Ljava/lang/String;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/event/a/i;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/event/a/i;

    move-result-object v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 382
    return-void
.end method

.method public static a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcom/actionbarsherlock/app/SherlockFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v1

    .line 124
    const-string v2, "RSVPDialog"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v1, v0}, Landroid/support/v4/app/aa;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 128
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/aa;->a(Ljava/lang/String;)Landroid/support/v4/app/aa;

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    const-string v2, "am.sunrise.android.calendar.extra.RSVP_EVENT_TITLE"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "am.sunrise.android.calendar.extra.RSVP_EVENT_TYPE"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v2, "am.sunrise.android.calendar.extra.RSVP_ORGANIZER_NAME"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "am.sunrise.android.calendar.extra.RSVP_ORGANIZER_EMAIL"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v2, "am.sunrise.android.calendar.extra.RSVP_STATUS"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "am.sunrise.android.calendar.extra.RSVP_MESSAGE"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v2, Lam/sunrise/android/calendar/ui/event/a/a;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/event/a/a;-><init>()V

    .line 137
    invoke-virtual {v2, v0}, Landroid/support/v4/app/e;->setArguments(Landroid/os/Bundle;)V

    .line 138
    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/app/e;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 139
    const-string v0, "RSVPDialog"

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/e;->show(Landroid/support/v4/app/aa;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 357
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->dismiss()V

    .line 358
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    instance-of v1, v0, Lam/sunrise/android/calendar/ui/event/a/h;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 362
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    :goto_0
    check-cast v0, Lam/sunrise/android/calendar/ui/event/a/h;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/a/a;->h:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lam/sunrise/android/calendar/ui/event/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_0
    return-void

    .line 364
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->c:Ljava/lang/String;

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->b(Landroid/support/v4/app/Fragment;)V

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->c()V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 353
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->dismiss()V

    .line 354
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0, p1, p2, p3}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onActivityResult(IILandroid/content/Intent;)V

    .line 300
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    new-instance v0, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/a/a;->m:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v0, v1, v2}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    .line 153
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onCreate(Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 166
    const-string v1, "am.sunrise.android.calendar.extra.RSVP_EVENT_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->b:Ljava/lang/String;

    .line 167
    const-string v1, "am.sunrise.android.calendar.extra.RSVP_EVENT_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->c:Ljava/lang/String;

    .line 168
    const-string v1, "am.sunrise.android.calendar.extra.RSVP_ORGANIZER_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->f:Ljava/lang/String;

    .line 169
    const-string v1, "am.sunrise.android.calendar.extra.RSVP_ORGANIZER_EMAIL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->g:Ljava/lang/String;

    .line 170
    const-string v1, "am.sunrise.android.calendar.extra.RSVP_STATUS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->h:Ljava/lang/String;

    .line 171
    const-string v1, "am.sunrise.android.calendar.extra.RSVP_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->i:Ljava/lang/String;

    .line 181
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 182
    const v1, 0x7f030060

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 184
    const/4 v0, 0x3

    new-array v0, v0, [Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->j:[Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;

    .line 185
    const v0, 0x7f0b00e7

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 186
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/a/a;->j:[Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;

    const v0, 0x7f0b00e8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;

    aput-object v0, v4, v2

    .line 187
    new-instance v0, Lam/sunrise/android/calendar/ui/event/a/b;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/a/b;-><init>(Lam/sunrise/android/calendar/ui/event/a/a;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v0, 0x7f0b00e9

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 194
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/a/a;->j:[Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;

    const v0, 0x7f0b00ea

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;

    aput-object v0, v4, v6

    .line 195
    new-instance v0, Lam/sunrise/android/calendar/ui/event/a/c;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/a/c;-><init>(Lam/sunrise/android/calendar/ui/event/a/a;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v0, 0x7f0b00eb

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 202
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/a/a;->j:[Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;

    const/4 v5, 0x2

    const v0, 0x7f0b00ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/CheckedTextView;

    aput-object v0, v4, v5

    .line 203
    new-instance v0, Lam/sunrise/android/calendar/ui/event/a/d;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/a/d;-><init>(Lam/sunrise/android/calendar/ui/event/a/a;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v0, 0x7f0b00ed

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->k:Landroid/widget/EditText;

    .line 212
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 213
    const v0, 0x7f0b00e5

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->d:Landroid/widget/ImageView;

    .line 214
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f02008b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 215
    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 216
    new-instance v4, Lam/sunrise/android/calendar/ui/event/d;

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/event/a/a;->d:Landroid/widget/ImageView;

    invoke-direct {v4, v5, v0}, Lam/sunrise/android/calendar/ui/event/d;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lam/sunrise/android/calendar/ui/event/a/a;->e:Lam/sunrise/android/calendar/ui/event/d;

    .line 217
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v0

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/a/a;->g:Ljava/lang/String;

    invoke-static {v4}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/b/a/as;->a(II)Lcom/b/a/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/as;->b()Lcom/b/a/as;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->e:Lam/sunrise/android/calendar/ui/event/d;

    invoke-virtual {v0, v1}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 225
    :cond_1
    const v0, 0x7f0b00e6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 226
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 227
    const v1, 0x7f0f0191

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    :goto_1
    const v0, 0x1020016

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 235
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v4}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 237
    const v0, 0x7f0b00e3

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/ui/event/a/e;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/a/e;-><init>(Lam/sunrise/android/calendar/ui/event/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v0, 0x7f0b00e4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->l:Landroid/widget/TextView;

    .line 244
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v4}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 245
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->l:Landroid/widget/TextView;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/a/f;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/a/f;-><init>(Lam/sunrise/android/calendar/ui/event/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 253
    invoke-static {}, Lam/sunrise/android/calendar/ui/event/a/i;->values()[Lam/sunrise/android/calendar/ui/event/a/i;

    move-result-object v1

    array-length v4, v1

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_2

    aget-object v2, v1, v0

    .line 254
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/event/a/a;->h:Ljava/lang/String;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/event/a/i;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 255
    invoke-direct {p0, v2}, Lam/sunrise/android/calendar/ui/event/a/a;->a(Lam/sunrise/android/calendar/ui/event/a/i;)V

    .line 261
    :cond_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 263
    return-object v3

    .line 172
    :cond_3
    if-eqz p3, :cond_0

    .line 173
    const-string v0, "saved_event_title"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->b:Ljava/lang/String;

    .line 174
    const-string v0, "saved_event_type"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->c:Ljava/lang/String;

    .line 175
    const-string v0, "saved_organizer_name"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->f:Ljava/lang/String;

    .line 176
    const-string v0, "saved_organizer_email"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->g:Ljava/lang/String;

    .line 177
    const-string v0, "saved_rsvp_status"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->h:Ljava/lang/String;

    .line 178
    const-string v0, "saved_rsvp_message"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 229
    :cond_4
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f018b

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->g:Ljava/lang/String;

    :goto_3
    aput-object v1, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->f:Ljava/lang/String;

    goto :goto_3

    .line 253
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onDestroy()V

    .line 159
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onDestroy()V

    .line 160
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 275
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onPause()V

    .line 276
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onPause()V

    .line 277
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onResume()V

    .line 269
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onResume()V

    .line 270
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->h:Ljava/lang/String;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/a/i;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/event/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 271
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 288
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 289
    const-string v0, "saved_event_title"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v0, "saved_event_type"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "saved_organizer_name"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "saved_organizer_email"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v0, "saved_rsvp_status"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "saved_rsvp_message"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a/a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a/a;->a:Lam/sunrise/android/calendar/authenticator/ui/facebook/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/facebook/f;->onStop()V

    .line 282
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onStop()V

    .line 283
    return-void
.end method
