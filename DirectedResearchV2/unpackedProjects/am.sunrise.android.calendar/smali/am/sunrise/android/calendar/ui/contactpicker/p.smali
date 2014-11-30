.class public Lam/sunrise/android/calendar/ui/contactpicker/p;
.super Landroid/os/AsyncTask;
.source "SearchPeopleTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lam/sunrise/android/calendar/api/models/datas/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/contactpicker/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/ui/contactpicker/s;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/contactpicker/p;->a:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/contactpicker/p;->b:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/contactpicker/p;->c:Ljava/lang/String;

    .line 59
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/p;->d:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/p;->e:Ljava/lang/ref/WeakReference;

    .line 61
    return-void
.end method

.method private a(Lam/sunrise/android/calendar/api/models/datas/Contact;Lam/sunrise/android/calendar/api/models/datas/Contact;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 247
    iget-object v2, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    iget-object v2, p2, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 252
    goto :goto_0

    .line 255
    :cond_2
    iget-object v2, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->firstName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->lastName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    :cond_3
    iget-object v2, p2, Lam/sunrise/android/calendar/api/models/datas/Contact;->firstName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p2, Lam/sunrise/android/calendar/api/models/datas/Contact;->lastName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 260
    goto :goto_0
.end method

.method private a(Lam/sunrise/android/calendar/api/models/datas/Contact;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 221
    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 243
    :cond_0
    :goto_0
    return v1

    .line 225
    :cond_1
    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 229
    goto :goto_0

    .line 232
    :cond_2
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-static {v3}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 234
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 235
    aget-object v4, v3, v0

    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 236
    goto :goto_0

    .line 234
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private b()[Lam/sunrise/android/calendar/api/models/datas/Contact;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 92
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->a()Lam/sunrise/android/calendar/api/c;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/p;->b:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/contactpicker/p;->c:Ljava/lang/String;

    const/16 v5, 0x14

    invoke-interface {v0, v1, v4, v5}, Lam/sunrise/android/calendar/api/c;->a(Ljava/lang/String;Ljava/lang/String;I)Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;

    move-result-object v4

    .line 94
    if-eqz v4, :cond_8

    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_8

    .line 95
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->data:[Ljava/lang/Object;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->data:[Ljava/lang/Object;

    check-cast v0, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 144
    :goto_0
    return-object v0

    .line 98
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v1, v3

    .line 99
    :goto_1
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->data:[Ljava/lang/Object;

    check-cast v0, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 100
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->data:[Ljava/lang/Object;

    check-cast v0, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    aget-object v6, v0, v1

    .line 102
    iget-object v0, v6, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {v6}, Lam/sunrise/android/calendar/api/models/datas/Contact;->cleanup()V

    .line 108
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/p;->d:Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lam/sunrise/android/calendar/ui/contactpicker/p;->a(Lam/sunrise/android/calendar/api/models/datas/Contact;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, v6, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v6, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-direct {p0, v0, v6}, Lam/sunrise/android/calendar/ui/contactpicker/p;->a(Lam/sunrise/android/calendar/api/models/datas/Contact;Lam/sunrise/android/calendar/api/models/datas/Contact;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_3
    iget-object v0, v6, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 122
    :catch_0
    move-exception v1

    .line 123
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_7

    move-object v0, v1

    .line 125
    check-cast v0, Lretrofit/RetrofitError;

    .line 126
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 127
    const-string v0, "SearchPeopleTask"

    const-string v1, "No network!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 128
    goto :goto_0

    .line 117
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v2

    .line 118
    goto :goto_0

    .line 120
    :cond_5
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/api/models/datas/Contact;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 131
    :cond_6
    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_7

    .line 133
    const-string v4, "SearchPeopleTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "statusCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v4, 0x191

    if-ne v0, v4, :cond_7

    .line 138
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v4, Lam/sunrise/android/calendar/sync/events/SyncError;

    sget-object v5, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->OAuth:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    invoke-direct {v4, v5}, Lam/sunrise/android/calendar/sync/events/SyncError;-><init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V

    invoke-virtual {v0, v4}, La/a/a/c;->c(Ljava/lang/Object;)V

    .line 142
    :cond_7
    const-string v0, "SearchPeopleTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    move-object v0, v2

    .line 144
    goto/16 :goto_0
.end method


# virtual methods
.method public a([Lam/sunrise/android/calendar/api/models/datas/Contact;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/p;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/contactpicker/s;

    .line 211
    if-eqz v0, :cond_0

    .line 212
    invoke-static {p1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/p;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/s;->b(Ljava/lang/String;)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/p;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lam/sunrise/android/calendar/ui/contactpicker/s;->a(Ljava/lang/String;[Lam/sunrise/android/calendar/api/models/datas/Contact;)V

    goto :goto_0
.end method

.method public a()[Lam/sunrise/android/calendar/api/models/datas/Contact;
    .locals 7

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 174
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/contactpicker/r;->a:Landroid/net/Uri;

    sget-object v2, Lam/sunrise/android/calendar/ui/contactpicker/r;->b:[Ljava/lang/String;

    const-string v3, "display_name LIKE ?  OR data1 LIKE ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "CASE WHEN display_name NOT LIKE \'%@%\' THEN 1 ELSE 2 END, display_name COLLATE NOCASE, data1 COLLATE NOCASE"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    if-eqz v0, :cond_3

    .line 182
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    const-string v2, "display_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 186
    const-string v3, "data1"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 189
    :cond_0
    new-instance v4, Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lam/sunrise/android/calendar/api/models/datas/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/contactpicker/p;->d:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lam/sunrise/android/calendar/ui/contactpicker/p;->a(Lam/sunrise/android/calendar/api/models/datas/Contact;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 195
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/Void;)[Lam/sunrise/android/calendar/api/models/datas/Contact;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/p;->a()[Lam/sunrise/android/calendar/api/models/datas/Contact;

    move-result-object v1

    .line 66
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/contactpicker/p;->b()[Lam/sunrise/android/calendar/api/models/datas/Contact;

    move-result-object v0

    .line 70
    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 75
    :cond_0
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 83
    :cond_1
    :goto_1
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 84
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    new-array v0, v0, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 86
    new-instance v1, Lam/sunrise/android/calendar/ui/contactpicker/q;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/contactpicker/q;-><init>(Lam/sunrise/android/calendar/ui/contactpicker/p;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    .line 78
    :cond_2
    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 79
    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    array-length v1, v1

    array-length v3, v0

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/contactpicker/p;->a([Ljava/lang/Void;)[Lam/sunrise/android/calendar/api/models/datas/Contact;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/contactpicker/p;->a([Lam/sunrise/android/calendar/api/models/datas/Contact;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/p;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/contactpicker/s;

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/contactpicker/s;->e()V

    .line 206
    :cond_0
    return-void
.end method
