.class Lam/sunrise/android/calendar/ui/contactpicker/q;
.super Ljava/lang/Object;
.source "SearchPeopleTask.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lam/sunrise/android/calendar/api/models/datas/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/contactpicker/p;

.field private b:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/contactpicker/p;)V
    .locals 1

    .prologue
    .line 270
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/contactpicker/q;->a:Lam/sunrise/android/calendar/ui/contactpicker/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/q;->b:Ljava/text/Collator;

    .line 272
    return-void
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/api/models/datas/Contact;Lam/sunrise/android/calendar/api/models/datas/Contact;)I
    .locals 3

    .prologue
    .line 276
    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    .line 277
    :goto_0
    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    .line 279
    :goto_1
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/contactpicker/q;->b:Ljava/text/Collator;

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 280
    if-eqz v0, :cond_2

    .line 284
    :goto_2
    return v0

    .line 276
    :cond_0
    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    goto :goto_0

    .line 277
    :cond_1
    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    goto :goto_1

    .line 284
    :cond_2
    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    iget-object v1, p2, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_2
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 266
    check-cast p1, Lam/sunrise/android/calendar/api/models/datas/Contact;

    check-cast p2, Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/contactpicker/q;->a(Lam/sunrise/android/calendar/api/models/datas/Contact;Lam/sunrise/android/calendar/api/models/datas/Contact;)I

    move-result v0

    return v0
.end method
