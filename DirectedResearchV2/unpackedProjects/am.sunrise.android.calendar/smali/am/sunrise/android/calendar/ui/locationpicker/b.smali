.class public Lam/sunrise/android/calendar/ui/locationpicker/b;
.super Lam/sunrise/android/calendar/ui/c;
.source "LocationPickerFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/locationpicker/i;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/gms/common/c;
.implements Lcom/google/android/gms/common/d;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/ListView;

.field private e:Lam/sunrise/android/calendar/ui/locationpicker/a;

.field private f:Lam/sunrise/android/calendar/ui/locationpicker/h;

.field private g:Ljava/lang/Runnable;

.field private h:Z

.field private i:Lcom/google/android/gms/location/d;

.field private volatile j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/c;-><init>()V

    .line 59
    new-instance v0, Lam/sunrise/android/calendar/ui/locationpicker/c;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/locationpicker/c;-><init>(Lam/sunrise/android/calendar/ui/locationpicker/b;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->g:Ljava/lang/Runnable;

    .line 75
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/locationpicker/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/locationpicker/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 297
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->j:Z

    .line 298
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->supportInvalidateOptionsMenu()V

    .line 301
    :cond_0
    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/locationpicker/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/locationpicker/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/locationpicker/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/locationpicker/b;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->f()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 265
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->f()V

    .line 267
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->h:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->i:Lcom/google/android/gms/location/d;

    invoke-virtual {v0}, Lcom/google/android/gms/location/d;->a()Landroid/location/Location;

    move-result-object v0

    .line 272
    :goto_0
    new-instance v1, Lam/sunrise/android/calendar/ui/locationpicker/h;

    invoke-direct {v1, p0, p1, v0}, Lam/sunrise/android/calendar/ui/locationpicker/h;-><init>(Lam/sunrise/android/calendar/ui/locationpicker/i;Ljava/lang/String;Landroid/location/Location;)V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->f:Lam/sunrise/android/calendar/ui/locationpicker/h;

    .line 273
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->f:Lam/sunrise/android/calendar/ui/locationpicker/h;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/locationpicker/h;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 274
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/locationpicker/b;)Lam/sunrise/android/calendar/ui/locationpicker/a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->e:Lam/sunrise/android/calendar/ui/locationpicker/a;

    return-object v0
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/locationpicker/b;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lam/sunrise/android/calendar/ui/locationpicker/b;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 277
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->a(Z)V

    .line 279
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->f:Lam/sunrise/android/calendar/ui/locationpicker/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/locationpicker/h;->cancel(Z)Z

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->f:Lam/sunrise/android/calendar/ui/locationpicker/h;

    .line 282
    :cond_0
    return-void
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->f:Lam/sunrise/android/calendar/ui/locationpicker/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->f:Lam/sunrise/android/calendar/ui/locationpicker/h;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/locationpicker/h;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 291
    :cond_0
    const/4 v0, 0x0

    .line 293
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/PredictionsResponse;)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->e:Lam/sunrise/android/calendar/ui/locationpicker/a;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/PredictionsResponse;->predictions:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/locationpicker/a;->a([Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;)V

    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->a(Z)V

    .line 219
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->h:Z

    .line 249
    return-void
.end method

.method public a(Lcom/google/android/gms/common/a;)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->e:Lam/sunrise/android/calendar/ui/locationpicker/a;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/locationpicker/a;->a(Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->a(Z)V

    .line 213
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->e:Lam/sunrise/android/calendar/ui/locationpicker/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/locationpicker/a;->a([Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;)V

    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->a(Z)V

    .line 225
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->h:Z

    .line 254
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 158
    new-instance v0, Lcom/google/android/gms/location/d;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/location/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->i:Lcom/google/android/gms/location/d;

    .line 159
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->setHasOptionsMenu(Z)V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    const-string v0, "saved_location_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->b:Ljava/lang/String;

    .line 83
    const-string v0, "saved_editing_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->a:Z

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "am.sunrise.android.calendar.extras.LOCATION_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->b:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->a:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 5

    .prologue
    const v1, 0x7f0b0176

    .line 181
    const v0, 0x7f110009

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 182
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->j:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f03001f

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 189
    :goto_0
    const v0, 0x7f0b017e

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 190
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    .line 191
    const v0, 0x7f0b003b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 192
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 193
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->a:Z

    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 194
    new-instance v0, Lam/sunrise/android/calendar/ui/locationpicker/e;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/locationpicker/e;-><init>(Lam/sunrise/android/calendar/ui/locationpicker/b;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void

    .line 187
    :cond_0
    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 100
    const v0, 0x7f03005e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onDetach()V

    .line 206
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->f()V

    .line 207
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 231
    if-nez p3, :cond_1

    .line 232
    const-string v2, "am.sunrise.android.calendar.extras.LOCATION_NAME"

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->e:Lam/sunrise/android/calendar/ui/locationpicker/a;

    invoke-virtual {v0, p3}, Lam/sunrise/android/calendar/ui/locationpicker/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/i;->setResult(ILandroid/content/Intent;)V

    .line 243
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    .line 244
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->e:Lam/sunrise/android/calendar/ui/locationpicker/a;

    invoke-virtual {v0, p3}, Lam/sunrise/android/calendar/ui/locationpicker/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;

    .line 235
    if-eqz v0, :cond_0

    .line 236
    const-string v2, "am.sunrise.android.calendar.extras.LOCATION_REFERENCE_ID"

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->reference:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v2, "am.sunrise.android.calendar.extras.LOCATION_NAME"

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->getLocationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v2, "am.sunrise.android.calendar.extras.LOCATION_ADDRESS"

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->getLocationAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onPause()V

    .line 176
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->b:Ljava/lang/String;

    .line 94
    const-string v0, "saved_location_name"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "saved_editing_mode"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onStart()V

    .line 164
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->i:Lcom/google/android/gms/location/d;

    invoke-virtual {v0}, Lcom/google/android/gms/location/d;->b()V

    .line 165
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->i:Lcom/google/android/gms/location/d;

    invoke-virtual {v0}, Lcom/google/android/gms/location/d;->c()V

    .line 170
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onStop()V

    .line 171
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 105
    const v0, 0x7f0b00e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->c:Landroid/widget/EditText;

    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->c:Landroid/widget/EditText;

    new-instance v1, Lam/sunrise/android/calendar/ui/locationpicker/d;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/locationpicker/d;-><init>(Lam/sunrise/android/calendar/ui/locationpicker/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->d:Landroid/widget/ListView;

    .line 144
    new-instance v0, Lam/sunrise/android/calendar/ui/locationpicker/a;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/ui/locationpicker/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->e:Lam/sunrise/android/calendar/ui/locationpicker/a;

    .line 145
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->e:Lam/sunrise/android/calendar/ui/locationpicker/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 151
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/b;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    :cond_0
    return-void
.end method
