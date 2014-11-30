.class public Lcom/android/a/v;
.super Ljava/lang/Object;
.source "RecurrenceSet.java"


# static fields
.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;


# instance fields
.field public a:[Lcom/android/a/b;

.field public b:[J

.field public c:[Lcom/android/a/b;

.field public d:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 412
    const-string v0, "(?:\\r\\n?|\\n)[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/a/v;->e:Ljava/util/regex/Pattern;

    .line 415
    const-string v0, ".{75}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/a/v;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/a/v;->a:[Lcom/android/a/b;

    .line 44
    iput-object v0, p0, Lcom/android/a/v;->b:[J

    .line 45
    iput-object v0, p0, Lcom/android/a/v;->c:[Lcom/android/a/b;

    .line 46
    iput-object v0, p0, Lcom/android/a/v;->d:[J

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/a/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 95
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 97
    array-length v0, v2

    new-array v0, v0, [Lcom/android/a/b;

    iput-object v0, p0, Lcom/android/a/v;->a:[Lcom/android/a/b;

    move v0, v1

    .line 98
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 99
    new-instance v3, Lcom/android/a/b;

    invoke-direct {v3}, Lcom/android/a/b;-><init>()V

    .line 100
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lcom/android/a/b;->a(Ljava/lang/String;)V

    .line 101
    iget-object v4, p0, Lcom/android/a/v;->a:[Lcom/android/a/b;

    aput-object v3, v4, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    invoke-static {p2}, Lcom/android/a/v;->a(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/a/v;->b:[J

    .line 109
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 110
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 111
    array-length v0, v2

    new-array v0, v0, [Lcom/android/a/b;

    iput-object v0, p0, Lcom/android/a/v;->c:[Lcom/android/a/b;

    move v0, v1

    .line 112
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 113
    new-instance v3, Lcom/android/a/b;

    invoke-direct {v3}, Lcom/android/a/b;-><init>()V

    .line 114
    invoke-virtual {v3, p3}, Lcom/android/a/b;->a(Ljava/lang/String;)V

    .line 115
    iget-object v4, p0, Lcom/android/a/v;->c:[Lcom/android/a/b;

    aput-object v3, v4, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    const-string v0, "\n"

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_5

    aget-object v0, v4, v2

    .line 122
    invoke-static {v0}, Lcom/android/a/v;->a(Ljava/lang/String;)[J

    move-result-object v6

    .line 123
    array-length v7, v6

    move v0, v1

    :goto_3
    if-ge v0, v7, :cond_4

    aget-wide v8, v6, v0

    .line 124
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 121
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 127
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/a/v;->d:[J

    .line 128
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_6

    .line 129
    iget-object v4, p0, Lcom/android/a/v;->d:[J

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v4, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 133
    :cond_6
    return-void
.end method

.method public static a(Ljava/lang/String;)[J
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 153
    const-string v0, "UTC"

    .line 154
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 155
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 156
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 157
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 159
    :cond_0
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 160
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 161
    array-length v5, v4

    .line 162
    new-array v6, v5, [J

    move v1, v2

    .line 163
    :goto_0
    if-ge v1, v5, :cond_1

    .line 166
    :try_start_0
    aget-object v7, v4, v1

    invoke-virtual {v3, v7}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    invoke-virtual {v3, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    aput-wide v7, v6, v1

    .line 174
    iput-object v0, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    new-instance v0, Lcom/android/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeFormatException thrown when parsing time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v4, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in recurrence "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    return-object v6
.end method
