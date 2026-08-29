<!DOCTYPE html>
<html lang="bn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nusrat Top Up | Gaming Store</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Segoe UI', Arial, sans-serif; }
        body { background-color: #f4f7f6; color: #333; line-height: 1.6; }
        
        header { 
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%); 
            color: white; padding: 30px 20px; text-align: center; 
            border-bottom: 5px solid #ffc107;
        }

        .container { max-width: 1000px; margin: 20px auto; padding: 0 15px; }

        /* Game Card Selection */
        .game-banner { 
            background: #fff; border-radius: 15px; padding: 20px; 
            display: flex; align-items: center; justify-content: center; 
            gap: 20px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); cursor: pointer;
            border: 2px solid transparent; transition: 0.3s;
        }
        .game-banner:hover { border-color: #1e3c72; }
        .game-banner img { width: 70px; border-radius: 12px; }

        /* Package Section */
        #package-section { display: none; margin-top: 30px; }
        .section-title { margin-bottom: 15px; font-size: 20px; color: #1e3c72; border-left: 5px solid #1e3c72; padding-left: 10px; }
        
        .grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(140px, 1fr)); gap: 12px; }
        
        .package-card { 
            background: white; padding: 15px; border-radius: 10px; text-align: center; 
            border: 1px solid #ddd; cursor: pointer; transition: 0.2s;
        }
        .package-card:hover { border-color: #1e3c72; box-shadow: 0 5px 10px rgba(0,0,0,0.05); }
        .package-card.selected { background: #e3f2fd; border-color: #1e3c72; transform: scale(1.05); }
        .package-card h4 { font-size: 16px; margin-bottom: 5px; color: #333; }
        .package-card p { font-weight: bold; color: #e67e22; }

        /* Form Styling */
        .order-form { background: white; padding: 25px; border-radius: 15px; margin-top: 30px; display: none; box-shadow: 0 5px 20px rgba(0,0,0,0.1); }
        .order-form h3 { margin-bottom: 20px; color: #1e3c72; text-align: center; }
        input { width: 100%; padding: 12px; margin: 10px 0; border: 1px solid #ccc; border-radius: 8px; font-size: 16px; }
        
        .payment-box { 
            background: #fff9c4; padding: 15px; border-radius: 8px; 
            border: 1px dashed #fbc02d; margin: 15px 0; font-size: 15px; 
        }
        .payment-box b { color: #d32f2f; }

        .btn-submit { 
            background: #28a745; color: white; border: none; width: 100%; 
            padding: 15px; border-radius: 8px; font-size: 18px; cursor: pointer; 
            font-weight: bold; transition: 0.3s;
        }
        .btn-submit:hover { background: #218838; }

        footer { text-align: center; padding: 40px 20px; color: #666; font-size: 14px; }
    </style>
</head>
<body>

<header>
    <h1>Nusrat Top Up</h1>
    <p>সবচেয়ে দ্রুত এবং নির্ভরযোগ্য গেমিং শপ</p>
</header>

<div class="container">
    <!-- গেম সিলেক্ট করুন -->
    <div class="game-banner" onclick="showPackages()">
        <img src="https://img.icons8.com/color/96/free-fire.png" alt="Free Fire">
        <div>
            <h3>Free Fire UID Topup</h3>
            <p>ট্যাপ করুন সব প্যাকেজ দেখতে</p>
        </div>
    </div>

    <!-- প্যাকেজ লিস্ট -->
    <div id="package-section">
        <h3 class="section-title">প্যাকেজ নির্বাচন করুন</h3>
        <div class="grid">
            <!-- ছোট প্যাকেজ -->
            <div class="package-card" onclick="selectPkg(this, '25 Diamonds', '25')"><h4>25 Diamonds</h4><p>৳ 25</p></div>
            <div class="package-card" onclick="selectPkg(this, '50 Diamonds', '45')"><h4>50 Diamonds</h4><p>৳ 45</p></div>
            <div class="package-card" onclick="selectPkg(this, '115 Diamonds', '85')"><h4>115 Diamonds</h4><p>৳ 85</p></div>
            <div class="package-card" onclick="selectPkg(this, '240 Diamonds', '175')"><h4>240 Diamonds</h4><p>৳ 175</p></div>
            <div class="package-card" onclick="selectPkg(this, '355 Diamonds', '255')"><h4>355 Diamonds</h4><p>৳ 255</p></div>
            <div class="package-card" onclick="selectPkg(this, '610 Diamonds', '430')"><h4>610 Diamonds</h4><p>৳ 430</p></div>
            <div class="package-card" onclick="selectPkg(this, '1240 Diamonds', '850')"><h4>1240 Diamonds</h4><p>৳ 850</p></div>
            <div class="package-card" onclick="selectPkg(this, '2530 Diamonds', '1720')"><h4>2530 Diamonds</h4><p>৳ 1720</p></div>
            
            <!-- মেম্বারশিপ (আপনার রিকোয়েস্ট অনুযায়ী ১৫৫ টাকা) -->
            <div class="package-card" onclick="selectPkg(this, 'Weekly Membership', '155')">
                <h4>Weekly</h4>
                <p>৳ 155</p>
            </div>
            <div class="package-card" onclick="selectPkg(this, 'Monthly Membership', '750')">
                <h4>Monthly</h4>
                <p>৳ 750</p>
            </div>
        </div>
    </div>

    <!-- অর্ডার ফর্ম -->
    <div id="order-form" class="order-form">
        <h3>অর্ডার সম্পন্ন করুন</h3>
        <p id="summary" style="text-align:center; font-weight:bold; color:#1e3c72; margin-bottom:15px;"></p>
        
        <input type="number" id="uid" placeholder="আপনার প্লেয়ার আইডি (UID) দিন">
        
        <div class="payment-box">
            <strong>পেমেন্ট করার ঠিকানা:</strong><br>
            বিকাশ (Personal): <b>01643342683</b><br>
            নগদ (Personal): <b>01942911317</b><br><br>
            <i>প্রথমে উপরে দেওয়া নাম্বারে টাকা পাঠিয়ে দিন, তারপর ট্রানজেকশন আইডি (TrxID) নিচে দিন।</i>
        </div>
        
        <input type="text" id="trxid" placeholder="Transaction ID (TrxID) দিন">
        
        <button class="btn-submit" onclick="submitOrder()">অর্ডার কনফার্ম করুন</button>
    </div>
</div>

<footer>
    &copy; 2024 Nusrat Top Up - All Rights Reserved
</footer>

<script>
    let currentItem = "";
    let currentPrice = "";

    function showPackages() {
        document.getElementById('package-section').style.display = 'block';
        document.getElementById('package-section').scrollIntoView({ behavior: 'smooth' });
    }

    function selectPkg(element, name, price) {
        // সিলেক্টেড স্টাইল রিমুভ করা
        let cards = document.querySelectorAll('.package-card');
        cards.forEach(card => card.classList.remove('selected'));
        
        // নতুন সিলেক্টেড স্টাইল অ্যাড করা
        element.classList.add('selected');
        
        currentItem = name;
        currentPrice = price;
        
        document.getElementById('order-form').style.display = 'block';
        document.getElementById('summary').innerText = "নির্বাচিত: " + name + " | দাম: " + price + " টাকা";
        document.getElementById('order-form').scrollIntoView({ behavior: 'smooth' });
    }

    function submitOrder() {
        let playerUID = document.getElementById('uid').value;
        let transID = document.getElementById('trxid').value;

        if(!playerUID || !transID) {
            alert("দয়া করে UID এবং TrxID পূরণ করুন!");
        } else {
            // এখানে আপনি চাইলে কোনো ডাটাবেস বা মেসেজ সার্ভিসের সাথে কানেক্ট করতে পারেন
            alert("ধন্যবাদ! আপনার " + currentItem + " এর অর্ডারটি পাওয়া গেছে। আমরা শীঘ্রই আপনার UID: " + playerUID + " তে টপ-আপ করে দেব।");
        }
    }
</script>

</body>
</html>
