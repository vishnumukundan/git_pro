import 'package:flutter/material.dart';
import 'package:git_pro/core/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeManager.light(context),
      darkTheme: ThemeManager.dark(context),
      themeMode: ThemeManager.themeMode,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 8,
              runSpacing: 8,
              children: [
                FilledButton(
                    onPressed: () {}, child: const Text('Filled Button')),
                FilledButton.tonal(
                    onPressed: () {}, child: const Text('Filled Button')),
                OutlinedButton(
                    onPressed: () {}, child: const Text('OutlinedButton')),
                ElevatedButton(
                    onPressed: () {}, child: const Text('Elevated Button')),
                DrawerButton(onPressed: () {}),
                IconButton(onPressed: () {}, icon: const Icon(Icons.task)),
                IconButton.filled(
                    onPressed: () {}, icon: const Icon(Icons.task)),
                IconButton.filledTonal(
                    onPressed: () {}, icon: const Icon(Icons.task)),
                IconButton.outlined(
                    onPressed: () {}, icon: const Icon(Icons.task)),
                TextButton(onPressed: () {}, child: const Text('Text Button')),
                const BackButton(),
                const CloseButton(),
                const DrawerButton(),
                FloatingActionButton(
                    onPressed: () {}, child: const Icon(Icons.add)),
                FloatingActionButton.extended(
                  onPressed: () {},
                  label: const Text('Extended'),
                ),
                FloatingActionButton.large(
                    onPressed: () {}, child: const Icon(Icons.add)),
                FloatingActionButton.small(
                    onPressed: () {}, child: const Icon(Icons.add)),
                SizedBox(
                  width: 200,
                  child: SubmenuButton(
                    menuChildren: [
                      ListTile(
                        title: const Text('Item'),
                        leading: const Icon(Icons.check),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text('Item'),
                        leading: const Icon(Icons.check),
                        onTap: () {},
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Item'),
                        leading: const Icon(Icons.check),
                        onTap: () {},
                      ),
                    ],
                    child: const Text('Submenu Button'),
                  ),
                ),
                const SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      // label: Text('Field name'),
                      hintText: "Enter Something",
                      // filled: true,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            const Divider(),
            const Divider(),
            const Divider(),
            const Divider(),
            const SizedBox(height: 32),
            Text(
              'displayLarge',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 32),
            Text(
              'displayMedium',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 32),
            Text(
              'displaySmall',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 32),
            Text(
              'headlineLarge',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 32),
            Text(
              'headlineMedium',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 32),
            Text(
              'headlineSmall',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 32),
            Text(
              'titleLarge',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 32),
            Text(
              'titleMedium',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 32),
            Text(
              'titleSmall',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 32),
            Text(
              'labelLarge',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 32),
            Text(
              'labelMedium',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: 32),
            Text(
              'labelSmall',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const SizedBox(height: 32),
            Text(
              'bodyLarge',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 32),
            Text(
              'bodyMedium',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            Text(
              'bodySmall',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
