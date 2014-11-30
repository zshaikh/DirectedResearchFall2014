.class public Lorg/c/a/d/a/a;
.super Ljava/lang/Object;
.source "JSON.java"


# static fields
.field static final c:Lorg/c/a/d/c/d;

.field public static final d:Lorg/c/a/d/a/a;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/c/a/d/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-class v0, Lorg/c/a/d/a/a;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/a/a;->c:Lorg/c/a/d/c/d;

    .line 99
    new-instance v0, Lorg/c/a/d/a/a;

    invoke-direct {v0}, Lorg/c/a/d/a/a;-><init>()V

    sput-object v0, Lorg/c/a/d/a/a;->d:Lorg/c/a/d/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/c/a/d/a/a;->a:Ljava/util/Map;

    .line 102
    const/16 v0, 0x400

    iput v0, p0, Lorg/c/a/d/a/a;->b:I

    .line 106
    return-void
.end method

.method protected static b(Ljava/lang/String;Lorg/c/a/d/a/h;)V
    .locals 4

    .prologue
    .line 1312
    const/4 v0, 0x0

    .line 1313
    :goto_0
    invoke-interface {p1}, Lorg/c/a/d/a/h;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1315
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    move-result v2

    .line 1316
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_0

    .line 1317
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while seeking  \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 1318
    goto :goto_0

    .line 1320
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1321
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1322
    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lorg/c/a/d/a/h;)C
    .locals 4

    .prologue
    .line 1293
    :goto_0
    invoke-interface {p2}, Lorg/c/a/d/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1295
    invoke-interface {p2}, Lorg/c/a/d/a/h;->c()C

    move-result v0

    .line 1296
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1298
    return v0

    .line 1301
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1302
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' while seeking one of \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1303
    :cond_1
    invoke-interface {p2}, Lorg/c/a/d/a/h;->b()C

    goto :goto_0

    .line 1306
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 625
    if-eqz p1, :cond_0

    const-class v0, Lorg/c/a/d/a/d;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/d/a/d;

    .line 630
    invoke-interface {v0, p2}, Lorg/c/a/d/a/d;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :goto_0
    return-object v0

    .line 633
    :catch_0
    move-exception v0

    .line 635
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 639
    :cond_0
    invoke-virtual {p0, p1}, Lorg/c/a/d/a/a;->a(Ljava/lang/Class;)Lorg/c/a/d/a/e;

    move-result-object v0

    .line 640
    if-eqz v0, :cond_1

    .line 642
    invoke-interface {v0, p2}, Lorg/c/a/d/a/e;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 644
    goto :goto_0
.end method

.method public a(Lorg/c/a/d/a/h;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 817
    move v0, v1

    .line 819
    :goto_0
    invoke-interface {p1}, Lorg/c/a/d/a/h;->a()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 821
    invoke-interface {p1}, Lorg/c/a/d/a/h;->c()C

    move-result v6

    .line 824
    if-ne v0, v4, :cond_1

    .line 826
    sparse-switch v6, :sswitch_data_0

    .line 908
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    goto :goto_0

    .line 829
    :sswitch_0
    const/4 v0, -0x1

    .line 830
    goto :goto_1

    :sswitch_1
    move v0, v2

    .line 832
    goto :goto_1

    .line 836
    :cond_1
    if-le v0, v4, :cond_3

    .line 838
    sparse-switch v6, :sswitch_data_1

    move v0, v2

    .line 850
    goto :goto_1

    :sswitch_2
    move v0, v3

    .line 842
    goto :goto_1

    .line 844
    :sswitch_3
    if-ne v0, v3, :cond_2

    move v0, v1

    .line 845
    goto :goto_1

    :cond_2
    move v0, v2

    .line 848
    goto :goto_1

    .line 854
    :cond_3
    if-gez v0, :cond_4

    .line 856
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    move v0, v1

    .line 861
    goto :goto_1

    .line 869
    :cond_4
    sparse-switch v6, :sswitch_data_2

    .line 901
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 902
    invoke-virtual {p0, p1}, Lorg/c/a/d/a/a;->e(Lorg/c/a/d/a/h;)Ljava/lang/Number;

    move-result-object v0

    .line 911
    :goto_2
    return-object v0

    .line 872
    :sswitch_4
    invoke-virtual {p0, p1}, Lorg/c/a/d/a/a;->b(Lorg/c/a/d/a/h;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 874
    :sswitch_5
    invoke-virtual {p0, p1}, Lorg/c/a/d/a/a;->c(Lorg/c/a/d/a/h;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 876
    :sswitch_6
    invoke-virtual {p0, p1}, Lorg/c/a/d/a/a;->d(Lorg/c/a/d/a/h;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 878
    :sswitch_7
    invoke-virtual {p0, p1}, Lorg/c/a/d/a/a;->e(Lorg/c/a/d/a/h;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_2

    .line 881
    :sswitch_8
    const-string v0, "null"

    invoke-static {v0, p1}, Lorg/c/a/d/a/a;->b(Ljava/lang/String;Lorg/c/a/d/a/h;)V

    move-object v0, v5

    .line 882
    goto :goto_2

    .line 884
    :sswitch_9
    const-string v0, "true"

    invoke-static {v0, p1}, Lorg/c/a/d/a/a;->b(Ljava/lang/String;Lorg/c/a/d/a/h;)V

    .line 885
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 887
    :sswitch_a
    const-string v0, "false"

    invoke-static {v0, p1}, Lorg/c/a/d/a/a;->b(Ljava/lang/String;Lorg/c/a/d/a/h;)V

    .line 888
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 890
    :sswitch_b
    const-string v0, "undefined"

    invoke-static {v0, p1}, Lorg/c/a/d/a/a;->b(Ljava/lang/String;Lorg/c/a/d/a/h;)V

    move-object v0, v5

    .line 891
    goto :goto_2

    .line 893
    :sswitch_c
    const-string v0, "NaN"

    invoke-static {v0, p1}, Lorg/c/a/d/a/a;->b(Ljava/lang/String;Lorg/c/a/d/a/h;)V

    move-object v0, v5

    .line 894
    goto :goto_2

    :sswitch_d
    move v0, v4

    .line 898
    goto :goto_1

    .line 903
    :cond_5
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 905
    invoke-virtual {p0, p1, v6}, Lorg/c/a/d/a/a;->a(Lorg/c/a/d/a/h;C)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v5

    .line 911
    goto :goto_2

    .line 826
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch

    .line 838
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch

    .line 856
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 869
    :sswitch_data_2
    .sparse-switch
        0x22 -> :sswitch_6
        0x2d -> :sswitch_7
        0x2f -> :sswitch_d
        0x4e -> :sswitch_c
        0x5b -> :sswitch_5
        0x66 -> :sswitch_a
        0x6e -> :sswitch_8
        0x74 -> :sswitch_9
        0x75 -> :sswitch_b
        0x7b -> :sswitch_4
    .end sparse-switch
.end method

.method protected a(Lorg/c/a/d/a/h;C)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 917
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/c/a/d/a/a;->c()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 266
    invoke-virtual {p0, v0, p1}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a([CII)Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method protected a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Lorg/c/a/d/a/a;
    .locals 0

    .prologue
    .line 619
    return-object p0
.end method

.method protected a(Ljava/lang/Class;)Lorg/c/a/d/a/e;
    .locals 6

    .prologue
    .line 675
    .line 676
    iget-object v0, p0, Lorg/c/a/d/a/a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/d/a/e;

    .line 677
    if-nez v0, :cond_3

    sget-object v1, Lorg/c/a/d/a/a;->d:Lorg/c/a/d/a/a;

    if-eq p0, v1, :cond_3

    .line 678
    sget-object v0, Lorg/c/a/d/a/a;->d:Lorg/c/a/d/a/a;

    invoke-virtual {v0, p1}, Lorg/c/a/d/a/a;->a(Ljava/lang/Class;)Lorg/c/a/d/a/e;

    move-result-object v0

    move-object v2, v0

    move-object v1, p1

    .line 680
    :goto_0
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    const-class v0, Ljava/lang/Object;

    if-eq v1, v0, :cond_2

    .line 682
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 683
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v2

    move v2, v5

    .line 684
    :goto_1
    if-nez v0, :cond_0

    if-eqz v4, :cond_0

    array-length v3, v4

    if-ge v2, v3, :cond_0

    .line 685
    iget-object v0, p0, Lorg/c/a/d/a/a;->a:Ljava/util/Map;

    add-int/lit8 v3, v2, 0x1

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/d/a/e;

    move v2, v3

    goto :goto_1

    .line 686
    :cond_0
    if-nez v0, :cond_1

    .line 688
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 689
    iget-object v0, p0, Lorg/c/a/d/a/a;->a:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/d/a/e;

    :cond_1
    move-object v2, v0

    .line 691
    goto :goto_0

    .line 692
    :cond_2
    return-object v2

    :cond_3
    move-object v2, v0

    move-object v1, p1

    goto :goto_0
.end method

.method protected a(CLorg/c/a/d/a/h;)V
    .locals 4

    .prologue
    .line 1276
    :goto_0
    invoke-interface {p2}, Lorg/c/a/d/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1278
    invoke-interface {p2}, Lorg/c/a/d/a/h;->c()C

    move-result v0

    .line 1279
    if-ne v0, p1, :cond_0

    .line 1280
    return-void

    .line 1282
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1283
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " while seeking \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1284
    :cond_1
    invoke-interface {p2}, Lorg/c/a/d/a/h;->b()C

    goto :goto_0

    .line 1287
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Appendable;)V
    .locals 2

    .prologue
    .line 350
    :try_start_0
    const-string v0, "null"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 354
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Appendable;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 533
    if-nez p2, :cond_0

    .line 535
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;)V

    .line 544
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 542
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 538
    :cond_1
    :try_start_1
    const-string v0, "false"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Ljava/lang/Appendable;Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 558
    if-nez p2, :cond_0

    .line 560
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;)V

    .line 569
    :goto_0
    return-void

    .line 563
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 567
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 303
    if-nez p2, :cond_0

    .line 304
    :try_start_0
    const-string v0, "null"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 336
    :goto_0
    return-void

    .line 305
    :cond_0
    instance-of v0, p2, Lorg/c/a/d/a/d;

    if-eqz v0, :cond_1

    .line 306
    check-cast p2, Lorg/c/a/d/a/d;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;Lorg/c/a/d/a/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 334
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 307
    :cond_1
    :try_start_1
    instance-of v0, p2, Lorg/c/a/d/a/f;

    if-eqz v0, :cond_2

    .line 308
    check-cast p2, Lorg/c/a/d/a/f;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;Lorg/c/a/d/a/f;)V

    goto :goto_0

    .line 309
    :cond_2
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 310
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;Ljava/util/Map;)V

    goto :goto_0

    .line 311
    :cond_3
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 312
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;Ljava/util/Collection;)V

    goto :goto_0

    .line 313
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 314
    invoke-virtual {p0, p1, p2}, Lorg/c/a/d/a/a;->b(Ljava/lang/Appendable;Ljava/lang/Object;)V

    goto :goto_0

    .line 315
    :cond_5
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_6

    .line 316
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;Ljava/lang/Number;)V

    goto :goto_0

    .line 317
    :cond_6
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 318
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 319
    :cond_7
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_8

    .line 320
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_8
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 322
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/d/a/a;->a(Ljava/lang/Class;)Lorg/c/a/d/a/e;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_a

    .line 327
    invoke-virtual {p0, p1, v0, p2}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;Lorg/c/a/d/a/e;Ljava/lang/Object;)V

    goto :goto_0

    .line 329
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 581
    if-nez p2, :cond_0

    .line 583
    invoke-virtual {p0, p1}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;)V

    .line 588
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-static {p1, p2}, Lorg/c/a/d/k;->a(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Appendable;Ljava/util/Collection;)V
    .locals 3

    .prologue
    .line 459
    if-nez p2, :cond_0

    .line 461
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;)V

    .line 483
    :goto_0
    return-void

    .line 465
    :cond_0
    const/16 v0, 0x5b

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 466
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 467
    const/4 v0, 0x1

    .line 468
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    if-nez v0, :cond_1

    .line 471
    const/16 v0, 0x2c

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 473
    :cond_1
    const/4 v0, 0x0

    .line 474
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 479
    :catch_0
    move-exception v0

    .line 481
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 477
    :cond_2
    const/16 v0, 0x5d

    :try_start_1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Ljava/lang/Appendable;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 421
    if-nez p2, :cond_0

    .line 423
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;)V

    .line 445
    :goto_0
    return-void

    .line 427
    :cond_0
    const/16 v0, 0x7b

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 428
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 429
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 432
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/c/a/d/k;->a(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 433
    const/16 v2, 0x3a

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 434
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 435
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    const/16 v0, 0x2c

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 441
    :catch_0
    move-exception v0

    .line 443
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 439
    :cond_2
    const/16 v0, 0x7d

    :try_start_1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Ljava/lang/Appendable;Lorg/c/a/d/a/d;)V
    .locals 2

    .prologue
    .line 391
    new-instance v0, Lorg/c/a/d/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/c/a/d/a/c;-><init>(Lorg/c/a/d/a/a;Ljava/lang/Appendable;Lorg/c/a/d/a/b;)V

    .line 392
    invoke-interface {p2, v0}, Lorg/c/a/d/a/d;->a(Lorg/c/a/d/a/g;)V

    .line 393
    invoke-virtual {v0}, Lorg/c/a/d/a/c;->a()V

    .line 394
    return-void
.end method

.method public a(Ljava/lang/Appendable;Lorg/c/a/d/a/e;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 368
    new-instance v0, Lorg/c/a/d/a/b;

    invoke-direct {v0, p0, p2, p3}, Lorg/c/a/d/a/b;-><init>(Lorg/c/a/d/a/a;Lorg/c/a/d/a/e;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;Lorg/c/a/d/a/d;)V

    .line 379
    return-void
.end method

.method public a(Ljava/lang/Appendable;Lorg/c/a/d/a/f;)V
    .locals 0

    .prologue
    .line 406
    invoke-interface {p2, p1}, Lorg/c/a/d/a/f;->a(Ljava/lang/Appendable;)V

    .line 407
    return-void
.end method

.method protected a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 607
    new-array v0, p1, [Ljava/lang/Object;

    return-object v0
.end method

.method protected b(Lorg/c/a/d/a/h;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/16 v3, 0x7d

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 923
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    .line 924
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 925
    :cond_0
    invoke-virtual {p0}, Lorg/c/a/d/a/a;->a()Ljava/util/Map;

    move-result-object v1

    .line 927
    const-string v0, "\"}"

    invoke-virtual {p0, v0, p1}, Lorg/c/a/d/a/a;->a(Ljava/lang/String;Lorg/c/a/d/a/h;)C

    move-result v0

    .line 929
    :goto_0
    invoke-interface {p1}, Lorg/c/a/d/a/h;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 931
    if-ne v0, v3, :cond_2

    .line 933
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    .line 952
    :cond_1
    const-string v0, "x-class"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 953
    if-eqz v0, :cond_4

    .line 955
    invoke-virtual {p0, v0}, Lorg/c/a/d/a/a;->b(Ljava/lang/String;)Lorg/c/a/d/a/e;

    move-result-object v2

    .line 956
    if-eqz v2, :cond_3

    .line 957
    invoke-interface {v2, v1}, Lorg/c/a/d/a/e;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 975
    :goto_1
    return-object v0

    .line 937
    :cond_2
    invoke-virtual {p0, p1}, Lorg/c/a/d/a/a;->d(Lorg/c/a/d/a/h;)Ljava/lang/String;

    move-result-object v0

    .line 938
    const/16 v2, 0x3a

    invoke-virtual {p0, v2, p1}, Lorg/c/a/d/a/a;->a(CLorg/c/a/d/a/h;)V

    .line 939
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    .line 941
    invoke-virtual {p0, v0}, Lorg/c/a/d/a/a;->a(Ljava/lang/String;)Lorg/c/a/d/a/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/c/a/d/a/a;->a(Lorg/c/a/d/a/h;)Ljava/lang/Object;

    move-result-object v2

    .line 942
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const-string v0, ",}"

    invoke-virtual {p0, v0, p1}, Lorg/c/a/d/a/a;->a(Ljava/lang/String;Lorg/c/a/d/a/h;)C

    .line 945
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    move-result v0

    .line 946
    if-eq v0, v3, :cond_1

    .line 949
    const-string v0, "\"}"

    invoke-virtual {p0, v0, p1}, Lorg/c/a/d/a/a;->a(Ljava/lang/String;Lorg/c/a/d/a/h;)C

    move-result v0

    goto :goto_0

    .line 958
    :cond_3
    sget-object v2, Lorg/c/a/d/a/a;->c:Lorg/c/a/d/c/d;

    const-string v3, "no Convertor for xclassname \'%s\'"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 961
    :cond_4
    const-string v0, "class"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 962
    if-eqz v0, :cond_5

    .line 966
    :try_start_0
    const-class v2, Lorg/c/a/d/a/a;

    invoke-static {v2, v0}, Lorg/c/a/d/j;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 967
    invoke-virtual {p0, v2, v1}, Lorg/c/a/d/a/a;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 969
    :catch_0
    move-exception v2

    .line 971
    sget-object v2, Lorg/c/a/d/a/a;->c:Lorg/c/a/d/c/d;

    const-string v3, "no Class for classname \'%s\'"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/c/a/d/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move-object v0, v1

    .line 975
    goto :goto_1
.end method

.method protected b()Lorg/c/a/d/a/a;
    .locals 0

    .prologue
    .line 613
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lorg/c/a/d/a/e;
    .locals 2

    .prologue
    .line 719
    .line 720
    iget-object v0, p0, Lorg/c/a/d/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/d/a/e;

    .line 721
    if-nez v0, :cond_0

    sget-object v1, Lorg/c/a/d/a/a;->d:Lorg/c/a/d/a/a;

    if-eq p0, v1, :cond_0

    .line 722
    sget-object v0, Lorg/c/a/d/a/a;->d:Lorg/c/a/d/a/a;

    invoke-virtual {v0, p1}, Lorg/c/a/d/a/a;->b(Ljava/lang/String;)Lorg/c/a/d/a/e;

    move-result-object v0

    .line 723
    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 497
    if-nez p2, :cond_0

    .line 499
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;)V

    .line 519
    :goto_0
    return-void

    .line 503
    :cond_0
    const/16 v0, 0x5b

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 504
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 506
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 508
    if-eqz v0, :cond_1

    .line 509
    const/16 v2, 0x2c

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 510
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/c/a/d/a/a;->a(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 513
    :cond_2
    const/16 v0, 0x5d

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 517
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/c/a/d/a/a;->b:I

    return v0
.end method

.method protected c(Lorg/c/a/d/a/h;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 981
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    move-result v0

    const/16 v3, 0x5b

    if-eq v0, v3, :cond_0

    .line 982
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    move-object v3, v4

    move-object v5, v4

    move v6, v2

    .line 989
    :goto_0
    invoke-interface {p1}, Lorg/c/a/d/a/h;->a()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 991
    invoke-interface {p1}, Lorg/c/a/d/a/h;->c()C

    move-result v7

    .line 992
    sparse-switch v7, :sswitch_data_0

    .line 1016
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1017
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    goto :goto_0

    .line 995
    :sswitch_0
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    .line 996
    packed-switch v6, :pswitch_data_0

    .line 1005
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/c/a/d/a/a;->a(I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    .line 999
    :pswitch_0
    invoke-virtual {p0, v2}, Lorg/c/a/d/a/a;->a(I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 1001
    :pswitch_1
    invoke-virtual {p0, v1}, Lorg/c/a/d/a/a;->a(I)[Ljava/lang/Object;

    move-result-object v0

    .line 1002
    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    .line 1009
    :sswitch_1
    if-eqz v0, :cond_1

    .line 1010
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1012
    :cond_1
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    move v0, v1

    .line 1013
    goto :goto_0

    .line 1021
    :cond_2
    add-int/lit8 v7, v6, 0x1

    if-nez v6, :cond_3

    .line 1022
    invoke-virtual {p0}, Lorg/c/a/d/a/a;->b()Lorg/c/a/d/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/c/a/d/a/a;->a(Lorg/c/a/d/a/h;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    move v6, v7

    move v0, v2

    goto :goto_0

    .line 1023
    :cond_3
    if-nez v5, :cond_4

    .line 1025
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1026
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    invoke-virtual {p0}, Lorg/c/a/d/a/a;->b()Lorg/c/a/d/a/a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/c/a/d/a/a;->a(Lorg/c/a/d/a/h;)Ljava/lang/Object;

    move-result-object v3

    .line 1028
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    move-object v5, v0

    move v6, v7

    move v0, v2

    .line 1029
    goto :goto_0

    .line 1033
    :cond_4
    invoke-virtual {p0}, Lorg/c/a/d/a/a;->b()Lorg/c/a/d/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/c/a/d/a/a;->a(Lorg/c/a/d/a/h;)Ljava/lang/Object;

    move-result-object v0

    .line 1034
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    move-object v3, v4

    move v6, v7

    .line 1035
    goto :goto_0

    .line 1042
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected end of array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch

    .line 996
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected d(Lorg/c/a/d/a/h;)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v3, 0x1

    const/16 v9, 0x5c

    const/16 v8, 0x22

    const/4 v1, 0x0

    .line 1048
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    move-result v0

    if-eq v0, v8, :cond_0

    .line 1049
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1053
    :cond_0
    const/4 v5, 0x0

    .line 1054
    invoke-interface {p1}, Lorg/c/a/d/a/h;->d()[C

    move-result-object v6

    .line 1056
    if-eqz v6, :cond_6

    move v0, v1

    move v2, v1

    .line 1059
    :goto_0
    invoke-interface {p1}, Lorg/c/a/d/a/h;->a()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1061
    array-length v4, v6

    if-lt v0, v4, :cond_1

    .line 1065
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, v6

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1066
    invoke-virtual {v4, v6, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1125
    :goto_1
    if-nez v4, :cond_5

    .line 1126
    invoke-virtual {p0, v6, v1, v0}, Lorg/c/a/d/a/a;->a([CII)Ljava/lang/String;

    move-result-object v0

    .line 1185
    :goto_2
    return-object v0

    .line 1070
    :cond_1
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    move-result v7

    .line 1072
    if-eqz v2, :cond_2

    .line 1075
    sparse-switch v7, :sswitch_data_0

    .line 1107
    add-int/lit8 v2, v0, 0x1

    aput-char v7, v6, v0

    move v0, v2

    :goto_3
    move v2, v1

    goto :goto_0

    .line 1078
    :sswitch_0
    add-int/lit8 v2, v0, 0x1

    aput-char v8, v6, v0

    move v0, v2

    .line 1079
    goto :goto_3

    .line 1081
    :sswitch_1
    add-int/lit8 v2, v0, 0x1

    aput-char v9, v6, v0

    move v0, v2

    .line 1082
    goto :goto_3

    .line 1084
    :sswitch_2
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x2f

    aput-char v4, v6, v0

    move v0, v2

    .line 1085
    goto :goto_3

    .line 1087
    :sswitch_3
    add-int/lit8 v2, v0, 0x1

    aput-char v10, v6, v0

    move v0, v2

    .line 1088
    goto :goto_3

    .line 1090
    :sswitch_4
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0xc

    aput-char v4, v6, v0

    move v0, v2

    .line 1091
    goto :goto_3

    .line 1093
    :sswitch_5
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0xa

    aput-char v4, v6, v0

    move v0, v2

    .line 1094
    goto :goto_3

    .line 1096
    :sswitch_6
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0xd

    aput-char v4, v6, v0

    move v0, v2

    .line 1097
    goto :goto_3

    .line 1099
    :sswitch_7
    add-int/lit8 v2, v0, 0x1

    const/16 v4, 0x9

    aput-char v4, v6, v0

    move v0, v2

    .line 1100
    goto :goto_3

    .line 1102
    :sswitch_8
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lorg/c/a/d/q;->a(B)B

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/c/a/d/q;->a(B)B

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/c/a/d/q;->a(B)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/c/a/d/q;->a(B)B

    move-result v4

    add-int/2addr v2, v4

    int-to-char v4, v2

    .line 1104
    add-int/lit8 v2, v0, 0x1

    aput-char v4, v6, v0

    move v0, v2

    .line 1105
    goto :goto_3

    .line 1110
    :cond_2
    if-ne v7, v9, :cond_3

    move v2, v3

    .line 1113
    goto/16 :goto_0

    .line 1115
    :cond_3
    if-ne v7, v8, :cond_4

    .line 1118
    invoke-virtual {p0, v6, v1, v0}, Lorg/c/a/d/a/a;->a([CII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1121
    :cond_4
    add-int/lit8 v4, v0, 0x1

    aput-char v7, v6, v0

    move v0, v4

    goto/16 :goto_0

    :cond_5
    move-object v0, v4

    .line 1133
    :goto_4
    invoke-interface {p1}, Lorg/c/a/d/a/h;->a()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1135
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    move-result v4

    .line 1137
    if-eqz v2, :cond_7

    .line 1140
    sparse-switch v4, :sswitch_data_1

    .line 1172
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    move v2, v1

    goto :goto_4

    .line 1129
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/c/a/d/a/a;->c()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v1

    goto :goto_4

    .line 1143
    :sswitch_9
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1146
    :sswitch_a
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1149
    :sswitch_b
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1152
    :sswitch_c
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1155
    :sswitch_d
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1158
    :sswitch_e
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1161
    :sswitch_f
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1164
    :sswitch_10
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1167
    :sswitch_11
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lorg/c/a/d/q;->a(B)B

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/c/a/d/q;->a(B)B

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/c/a/d/q;->a(B)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Lorg/c/a/d/q;->a(B)B

    move-result v4

    add-int/2addr v2, v4

    int-to-char v2, v2

    .line 1169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1175
    :cond_7
    if-ne v4, v9, :cond_8

    move v2, v3

    .line 1178
    goto :goto_4

    .line 1180
    :cond_8
    if-ne v4, v8, :cond_a

    .line 1185
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1183
    :cond_a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_b
    move-object v4, v5

    goto/16 :goto_1

    .line 1075
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_2
        0x5c -> :sswitch_1
        0x62 -> :sswitch_3
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x72 -> :sswitch_6
        0x74 -> :sswitch_7
        0x75 -> :sswitch_8
    .end sparse-switch

    .line 1140
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_9
        0x2f -> :sswitch_b
        0x5c -> :sswitch_a
        0x62 -> :sswitch_c
        0x66 -> :sswitch_d
        0x6e -> :sswitch_e
        0x72 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_11
    .end sparse-switch
.end method

.method public e(Lorg/c/a/d/a/h;)Ljava/lang/Number;
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 1191
    const/4 v0, 0x0

    .line 1193
    const/4 v5, 0x0

    move v4, v0

    move-wide v0, v2

    .line 1195
    :goto_0
    invoke-interface {p1}, Lorg/c/a/d/a/h;->a()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1197
    invoke-interface {p1}, Lorg/c/a/d/a/h;->c()C

    move-result v6

    .line 1198
    sparse-switch v6, :sswitch_data_0

    move-object v2, v5

    .line 1238
    :goto_1
    if-nez v2, :cond_3

    .line 1239
    if-eqz v4, :cond_0

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1269
    :goto_2
    return-object v0

    .line 1210
    :sswitch_0
    const-wide/16 v7, 0xa

    mul-long/2addr v0, v7

    add-int/lit8 v6, v6, -0x30

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 1211
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    goto :goto_0

    .line 1216
    :sswitch_1
    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "bad number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1218
    :cond_1
    const/4 v4, 0x1

    .line 1219
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    goto :goto_0

    .line 1225
    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1226
    if-eqz v4, :cond_2

    .line 1227
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1228
    :cond_2
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1229
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1230
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    goto :goto_1

    .line 1261
    :sswitch_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1262
    invoke-interface {p1}, Lorg/c/a/d/a/h;->b()C

    .line 1241
    :cond_3
    invoke-interface {p1}, Lorg/c/a/d/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1243
    invoke-interface {p1}, Lorg/c/a/d/a/h;->c()C

    move-result v0

    .line 1244
    sparse-switch v0, :sswitch_data_1

    .line 1269
    :cond_4
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v2, v5

    goto :goto_1

    .line 1198
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch

    .line 1244
    :sswitch_data_1
    .sparse-switch
        0x2b -> :sswitch_3
        0x2d -> :sswitch_3
        0x2e -> :sswitch_3
        0x30 -> :sswitch_3
        0x31 -> :sswitch_3
        0x32 -> :sswitch_3
        0x33 -> :sswitch_3
        0x34 -> :sswitch_3
        0x35 -> :sswitch_3
        0x36 -> :sswitch_3
        0x37 -> :sswitch_3
        0x38 -> :sswitch_3
        0x39 -> :sswitch_3
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method
