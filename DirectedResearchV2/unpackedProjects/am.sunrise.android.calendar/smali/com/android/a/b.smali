.class public Lcom/android/a/b;
.super Ljava/lang/Object;
.source "EventRecurrence.java"


# static fields
.field private static A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private static final B:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final C:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static z:Ljava/lang/String;


# instance fields
.field public a:Landroid/text/format/Time;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:[I

.field public h:I

.field public i:[I

.field public j:I

.field public k:[I

.field public l:I

.field public m:[I

.field public n:[I

.field public o:I

.field public p:[I

.field public q:I

.field public r:[I

.field public s:I

.field public t:[I

.field public u:I

.field public v:[I

.field public w:I

.field public x:[I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    const-string v0, "EventRecur"

    sput-object v0, Lcom/android/a/b;->z:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/a/b;->A:Ljava/util/HashMap;

    .line 82
    sget-object v0, Lcom/android/a/b;->A:Ljava/util/HashMap;

    const-string v1, "FREQ"

    new-instance v2, Lcom/android/a/o;

    invoke-direct {v2, v3}, Lcom/android/a/o;-><init>(Lcom/android/a/c;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/a/b;->A:Ljava/util/HashMap;

    const-string v1, "UNTIL"

    new-instance v2, Lcom/android/a/q;

    invoke-direct {v2, v3}, Lcom/android/a/q;-><init>(Lcom/android/a/c;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/a/b;->A:Ljava/util/HashMap;

    const-string v1, "COUNT"

    new-instance v2, Lcom/android/a/n;

    invoke-direct {v2, v3}, Lcom/android/a/n;-><init>(Lcom/android/a/c;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/a/b;->A:Ljava/util/HashMap;

    const-string v1, "INTERVAL"

    new-instance v2, Lcom/android/a/p;

    invoke-direct {v2, v3}, Lcom/android/a/p;-><init>(Lcom/android/a/c;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/a/b;->A:Ljava/util/HashMap;

    const-string v1, "BYSECOND"

    new-instance v2, Lcom/android/a/j;

    invoke-direct {v2, v3}, Lcom/android/a/j;-><init>(Lcom/android/a/c;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/a/b;->A:Ljava/util/HashMap;

    const-string v1, "BYMINUTE"

    new-instance v2, Lcom/android/a/g;

    invoke-direct {v2, v3}, Lcom/android/a/g;-><init>(Lcom/android/a/c;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/a/b;->A:Ljava/util/HashMap;

    const-string v1, "BYHOUR"

    new-instance v2, Lcom/android/a/f;

    invoke-direct {v2, v3}, Lcom/android/a/f;-><init>(Lcom/android/a/c;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/a/b;->A:Ljava/util/HashMap;

    const-string v1, "BYDAY"

    new-instance v2, Lcom/android/a/e;

    invoke-direct {v2, v3}, Lcom/android/a/e;-><init>(Lcom/android/a/c;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/a/b;->A:Ljava/util/HashMap;

    const-string v1, "BYMONTHDAY"

    new-instance v2, Lcom/android/a/i;

    invoke-direct {v2, v3}, Lcom/android/a/i;-><init>(Lcom/android/a/c;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/a/b;->A:Ljava/util/HashMap;

    const-string v1, "BYYEARDAY"

    new-instance v2, Lcom/android/a/m;

    invoke-direct {v2, v3}, Lcom/android/a/m;-><init>(Lcom/android/a/c;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/a/b;->A:Ljava/util/HashMap;

    const-string v1, "BYWEEKNO"

    new-instance v2, Lcom/android/a/l;

    invoke-direct {v2, v3}, Lcom/android/a/l;-><init>(Lcom/android/a/c;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/a/b;->A:Ljava/util/HashMap;

    const-string v1, "BYMONTH"

    new-instance v2, Lcom/android/a/h;

    invoke-direct {v2, v3}, Lcom/android/a/h;-><init>(Lcom/android/a/c;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/a/b;->A:Ljava/util/HashMap;

    const-string v1, "BYSETPOS"

    new-instance v2, Lcom/android/a/k;

    invoke-direct {v2, v3}, Lcom/android/a/k;-><init>(Lcom/android/a/c;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/a/b;->A:Ljava/util/HashMap;

    const-string v1, "WKST"

    new-instance v2, Lcom/android/a/r;

    invoke-direct {v2, v3}, Lcom/android/a/r;-><init>(Lcom/android/a/c;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/a/b;->B:Ljava/util/HashMap;

    .line 117
    sget-object v0, Lcom/android/a/b;->B:Ljava/util/HashMap;

    const-string v1, "SECONDLY"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/a/b;->B:Ljava/util/HashMap;

    const-string v1, "MINUTELY"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/a/b;->B:Ljava/util/HashMap;

    const-string v1, "HOURLY"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/a/b;->B:Ljava/util/HashMap;

    const-string v1, "DAILY"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/a/b;->B:Ljava/util/HashMap;

    const-string v1, "WEEKLY"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/a/b;->B:Ljava/util/HashMap;

    const-string v1, "MONTHLY"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/a/b;->B:Ljava/util/HashMap;

    const-string v1, "YEARLY"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/a/b;->C:Ljava/util/HashMap;

    .line 129
    sget-object v0, Lcom/android/a/b;->C:Ljava/util/HashMap;

    const-string v1, "SU"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/a/b;->C:Ljava/util/HashMap;

    const-string v1, "MO"

    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/a/b;->C:Ljava/util/HashMap;

    const-string v1, "TU"

    const/high16 v2, 0x40000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/a/b;->C:Ljava/util/HashMap;

    const-string v1, "WE"

    const/high16 v2, 0x80000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/a/b;->C:Ljava/util/HashMap;

    const-string v1, "TH"

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/a/b;->C:Ljava/util/HashMap;

    const-string v1, "FR"

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/a/b;->C:Ljava/util/HashMap;

    const-string v1, "SA"

    const/high16 v2, 0x400000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    return-void
.end method

.method public static a(I)I
    .locals 3

    .prologue
    .line 193
    packed-switch p0, :pswitch_data_0

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :pswitch_0
    const/high16 v0, 0x10000

    .line 208
    :goto_0
    return v0

    .line 198
    :pswitch_1
    const/high16 v0, 0x20000

    goto :goto_0

    .line 200
    :pswitch_2
    const/high16 v0, 0x40000

    goto :goto_0

    .line 202
    :pswitch_3
    const/high16 v0, 0x80000

    goto :goto_0

    .line 204
    :pswitch_4
    const/high16 v0, 0x100000

    goto :goto_0

    .line 206
    :pswitch_5
    const/high16 v0, 0x200000

    goto :goto_0

    .line 208
    :pswitch_6
    const/high16 v0, 0x400000

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/a/b;->B:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Ljava/lang/StringBuilder;I)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/a/b;->n:[I

    aget v0, v0, p2

    .line 312
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/a/b;->m:[I

    aget v0, v0, p2

    invoke-static {v0}, Lcom/android/a/b;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V
    .locals 3

    .prologue
    .line 298
    if-lez p2, :cond_1

    .line 299
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 v1, p2, -0x1

    .line 301
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 302
    aget v2, p3, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    aget v0, p3, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    :cond_1
    return-void
.end method

.method private static a([II[II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 456
    if-eq p1, p3, :cond_1

    .line 465
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 460
    :goto_1
    if-ge v1, p1, :cond_2

    .line 461
    aget v2, p0, v1

    aget v3, p2, v1

    if-ne v2, v3, :cond_0

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 465
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(I)I
    .locals 3

    .prologue
    .line 215
    sparse-switch p0, :sswitch_data_0

    .line 232
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :sswitch_0
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    .line 220
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 224
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 226
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 228
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 230
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 215
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/a/b;->z:Ljava/lang/String;

    return-object v0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 275
    sparse-switch p0, :sswitch_data_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :sswitch_0
    const-string v0, "SU"

    .line 289
    :goto_0
    return-object v0

    .line 279
    :sswitch_1
    const-string v0, "MO"

    goto :goto_0

    .line 281
    :sswitch_2
    const-string v0, "TU"

    goto :goto_0

    .line 283
    :sswitch_3
    const-string v0, "WE"

    goto :goto_0

    .line 285
    :sswitch_4
    const-string v0, "TH"

    goto :goto_0

    .line 287
    :sswitch_5
    const-string v0, "FR"

    goto :goto_0

    .line 289
    :sswitch_6
    const-string v0, "SA"

    goto :goto_0

    .line 275
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method static synthetic c()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/a/b;->C:Ljava/util/HashMap;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/a/b;->c:Ljava/lang/String;

    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/a/b;->y:I

    iput v0, p0, Lcom/android/a/b;->w:I

    iput v0, p0, Lcom/android/a/b;->u:I

    iput v0, p0, Lcom/android/a/b;->s:I

    iput v0, p0, Lcom/android/a/b;->q:I

    iput v0, p0, Lcom/android/a/b;->o:I

    iput v0, p0, Lcom/android/a/b;->l:I

    iput v0, p0, Lcom/android/a/b;->j:I

    iput v0, p0, Lcom/android/a/b;->h:I

    iput v0, p0, Lcom/android/a/b;->e:I

    iput v0, p0, Lcom/android/a/b;->d:I

    iput v0, p0, Lcom/android/a/b;->b:I

    .line 518
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 591
    invoke-direct {p0}, Lcom/android/a/b;->d()V

    .line 596
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 600
    array-length v5, v4

    move v2, v3

    move v1, v3

    :goto_0
    if-ge v2, v5, :cond_6

    aget-object v0, v4, v2

    .line 602
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v1

    .line 600
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 605
    :cond_0
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 606
    if-gtz v6, :cond_1

    .line 608
    new-instance v1, Lcom/android/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing LHS in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/a/d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 611
    :cond_1
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 612
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 613
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 614
    new-instance v1, Lcom/android/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing RHS in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/a/d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 621
    :cond_2
    sget-object v0, Lcom/android/a/b;->A:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/a/s;

    .line 622
    if-nez v0, :cond_4

    .line 623
    const-string v0, "X-"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 625
    goto :goto_1

    .line 627
    :cond_3
    new-instance v0, Lcom/android/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find parser for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_4
    invoke-virtual {v0, v6, p0}, Lcom/android/a/s;->a(Ljava/lang/String;Lcom/android/a/b;)I

    move-result v0

    .line 630
    and-int v6, v1, v0

    if-eqz v6, :cond_5

    .line 631
    new-instance v0, Lcom/android/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Part "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was specified twice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_5
    or-int/2addr v0, v1

    goto/16 :goto_1

    .line 638
    :cond_6
    and-int/lit16 v0, v1, 0x2000

    if-nez v0, :cond_7

    .line 639
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/a/b;->f:I

    .line 643
    :cond_7
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_8

    .line 644
    new-instance v0, Lcom/android/a/d;

    const-string v1, "Must specify a FREQ value"

    invoke-direct {v0, v1}, Lcom/android/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_8
    and-int/lit8 v0, v1, 0x6

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    .line 652
    sget-object v0, Lcom/android/a/b;->z:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: rrule has both UNTIL and COUNT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_9
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 470
    if-ne p0, p1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return v0

    .line 473
    :cond_1
    instance-of v2, p1, Lcom/android/a/b;

    if-nez v2, :cond_2

    move v0, v1

    .line 474
    goto :goto_0

    .line 477
    :cond_2
    check-cast p1, Lcom/android/a/b;

    .line 478
    iget-object v2, p0, Lcom/android/a/b;->a:Landroid/text/format/Time;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/android/a/b;->a:Landroid/text/format/Time;

    if-nez v2, :cond_3

    :goto_1
    iget v2, p0, Lcom/android/a/b;->b:I

    iget v3, p1, Lcom/android/a/b;->b:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/a/b;->c:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/android/a/b;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_2
    iget v2, p0, Lcom/android/a/b;->d:I

    iget v3, p1, Lcom/android/a/b;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/a/b;->e:I

    iget v3, p1, Lcom/android/a/b;->e:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/a/b;->f:I

    iget v3, p1, Lcom/android/a/b;->f:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/a/b;->g:[I

    iget v3, p0, Lcom/android/a/b;->h:I

    iget-object v4, p1, Lcom/android/a/b;->g:[I

    iget v5, p1, Lcom/android/a/b;->h:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/a/b;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/a/b;->i:[I

    iget v3, p0, Lcom/android/a/b;->j:I

    iget-object v4, p1, Lcom/android/a/b;->i:[I

    iget v5, p1, Lcom/android/a/b;->j:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/a/b;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/a/b;->k:[I

    iget v3, p0, Lcom/android/a/b;->l:I

    iget-object v4, p1, Lcom/android/a/b;->k:[I

    iget v5, p1, Lcom/android/a/b;->l:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/a/b;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/a/b;->m:[I

    iget v3, p0, Lcom/android/a/b;->o:I

    iget-object v4, p1, Lcom/android/a/b;->m:[I

    iget v5, p1, Lcom/android/a/b;->o:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/a/b;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/a/b;->n:[I

    iget v3, p0, Lcom/android/a/b;->o:I

    iget-object v4, p1, Lcom/android/a/b;->n:[I

    iget v5, p1, Lcom/android/a/b;->o:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/a/b;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/a/b;->p:[I

    iget v3, p0, Lcom/android/a/b;->q:I

    iget-object v4, p1, Lcom/android/a/b;->p:[I

    iget v5, p1, Lcom/android/a/b;->q:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/a/b;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/a/b;->r:[I

    iget v3, p0, Lcom/android/a/b;->s:I

    iget-object v4, p1, Lcom/android/a/b;->r:[I

    iget v5, p1, Lcom/android/a/b;->s:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/a/b;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/a/b;->t:[I

    iget v3, p0, Lcom/android/a/b;->u:I

    iget-object v4, p1, Lcom/android/a/b;->t:[I

    iget v5, p1, Lcom/android/a/b;->u:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/a/b;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/a/b;->v:[I

    iget v3, p0, Lcom/android/a/b;->w:I

    iget-object v4, p1, Lcom/android/a/b;->v:[I

    iget v5, p1, Lcom/android/a/b;->w:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/a/b;->a([II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/a/b;->x:[I

    iget v3, p0, Lcom/android/a/b;->y:I

    iget-object v4, p1, Lcom/android/a/b;->x:[I

    iget v5, p1, Lcom/android/a/b;->y:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/a/b;->a([II[II)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/a/b;->a:Landroid/text/format/Time;

    iget-object v3, p1, Lcom/android/a/b;->a:Landroid/text/format/Time;

    invoke-static {v2, v3}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/a/b;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/a/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 499
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    const-string v0, "FREQ="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget v0, p0, Lcom/android/a/b;->b:I

    packed-switch v0, :pswitch_data_0

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/android/a/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    const-string v0, ";UNTIL="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v0, p0, Lcom/android/a/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_0
    iget v0, p0, Lcom/android/a/b;->d:I

    if-eqz v0, :cond_1

    .line 357
    const-string v0, ";COUNT="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget v0, p0, Lcom/android/a/b;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    :cond_1
    iget v0, p0, Lcom/android/a/b;->e:I

    if-eqz v0, :cond_2

    .line 362
    const-string v0, ";INTERVAL="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget v0, p0, Lcom/android/a/b;->e:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    :cond_2
    iget v0, p0, Lcom/android/a/b;->f:I

    if-eqz v0, :cond_3

    .line 367
    const-string v0, ";WKST="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget v0, p0, Lcom/android/a/b;->f:I

    invoke-static {v0}, Lcom/android/a/b;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_3
    const-string v0, ";BYSECOND="

    iget v2, p0, Lcom/android/a/b;->h:I

    iget-object v3, p0, Lcom/android/a/b;->g:[I

    invoke-static {v1, v0, v2, v3}, Lcom/android/a/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 372
    const-string v0, ";BYMINUTE="

    iget v2, p0, Lcom/android/a/b;->j:I

    iget-object v3, p0, Lcom/android/a/b;->i:[I

    invoke-static {v1, v0, v2, v3}, Lcom/android/a/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 373
    const-string v0, ";BYSECOND="

    iget v2, p0, Lcom/android/a/b;->l:I

    iget-object v3, p0, Lcom/android/a/b;->k:[I

    invoke-static {v1, v0, v2, v3}, Lcom/android/a/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 376
    iget v0, p0, Lcom/android/a/b;->o:I

    .line 377
    if-lez v0, :cond_5

    .line 378
    const-string v2, ";BYDAY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    add-int/lit8 v2, v0, -0x1

    .line 380
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    .line 381
    invoke-direct {p0, v1, v0}, Lcom/android/a/b;->a(Ljava/lang/StringBuilder;I)V

    .line 382
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    :pswitch_0
    const-string v0, "SECONDLY"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 332
    :pswitch_1
    const-string v0, "MINUTELY"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 335
    :pswitch_2
    const-string v0, "HOURLY"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 338
    :pswitch_3
    const-string v0, "DAILY"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 341
    :pswitch_4
    const-string v0, "WEEKLY"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 344
    :pswitch_5
    const-string v0, "MONTHLY"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 347
    :pswitch_6
    const-string v0, "YEARLY"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 384
    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/android/a/b;->a(Ljava/lang/StringBuilder;I)V

    .line 387
    :cond_5
    const-string v0, ";BYMONTHDAY="

    iget v2, p0, Lcom/android/a/b;->q:I

    iget-object v3, p0, Lcom/android/a/b;->p:[I

    invoke-static {v1, v0, v2, v3}, Lcom/android/a/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 388
    const-string v0, ";BYYEARDAY="

    iget v2, p0, Lcom/android/a/b;->s:I

    iget-object v3, p0, Lcom/android/a/b;->r:[I

    invoke-static {v1, v0, v2, v3}, Lcom/android/a/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 389
    const-string v0, ";BYWEEKNO="

    iget v2, p0, Lcom/android/a/b;->u:I

    iget-object v3, p0, Lcom/android/a/b;->t:[I

    invoke-static {v1, v0, v2, v3}, Lcom/android/a/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 390
    const-string v0, ";BYMONTH="

    iget v2, p0, Lcom/android/a/b;->w:I

    iget-object v3, p0, Lcom/android/a/b;->v:[I

    invoke-static {v1, v0, v2, v3}, Lcom/android/a/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 391
    const-string v0, ";BYSETPOS="

    iget v2, p0, Lcom/android/a/b;->y:I

    iget-object v3, p0, Lcom/android/a/b;->x:[I

    invoke-static {v1, v0, v2, v3}, Lcom/android/a/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 393
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
